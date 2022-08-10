// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:hidden_drawer_menu_1/HomePage.dart';
import 'package:hidden_drawer_menu_1/SettingPage.dart';

class hiddenDrawer extends StatefulWidget {
  hiddenDrawer({Key? key}) : super(key: key);

  @override
  State<hiddenDrawer> createState() => _hiddenDrawerState();
}

class _hiddenDrawerState extends State<hiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final fontstyle =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);

  final fontstyleselecte = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: Color.fromARGB(255, 133, 131, 132));

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
            name: 'Home Page',
            baseStyle: fontstyle,
            selectedStyle: fontstyleselecte,
            colorLineSelected: Color.fromARGB(255, 4, 87, 136),
          ),
          HomePage()),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings Page',
          baseStyle: fontstyle,
          selectedStyle: fontstyleselecte,
          colorLineSelected: Color.fromARGB(255, 4, 87, 136),
        ),
        SettingPage(),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      initPositionSelected: 0,
      backgroundColorMenu: Colors.deepPurple.shade200,
      slidePercent: 40,
    );
  }
}
