import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';
import 'providers/products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(//從provider傳新資料過來後 build widget(只改有綁定的部分)
        create: (ctx) => Products(),
        child: MaterialApp(
          title: 'My shop',
           theme: ThemeData(
                    primarySwatch: Colors.purple,
                    accentColor: Colors.deepOrange,
                    fontFamily: 'Lato',
                  ),
            home: ProductOverviewScreen(),
            routes: {
              ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
            }),
    );
  }
}

