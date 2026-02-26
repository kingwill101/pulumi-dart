// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_theme_configuration_sheet_tile_layout_gutter/get_theme_configuration_sheet_tile_layout_gutter.dart';
import '../get_theme_configuration_sheet_tile_layout_margin/get_theme_configuration_sheet_tile_layout_margin.dart';

class GetThemeConfigurationSheetTileLayout {
  /// The gutter settings that apply between tiles. See gutter.
  final List<GetThemeConfigurationSheetTileLayoutGutter> gutters;

  /// The margin settings that apply around the outside edge of sheets. See margin.
  final List<GetThemeConfigurationSheetTileLayoutMargin> margins;

  GetThemeConfigurationSheetTileLayout({
    required this.gutters,
    required this.margins,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gutters'] = Input.encodeList<
        GetThemeConfigurationSheetTileLayoutGutter,
        Map<String, dynamic>>(gutters, (value) => value.toMap());
    map['margins'] = Input.encodeList<
        GetThemeConfigurationSheetTileLayoutMargin,
        Map<String, dynamic>>(margins, (value) => value.toMap());
    return map;
  }

  factory GetThemeConfigurationSheetTileLayout.fromMap(
      Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayout(
      gutters: Input.decodeList<GetThemeConfigurationSheetTileLayoutGutter>(
          map['gutters'],
          (value) => GetThemeConfigurationSheetTileLayoutGutter.fromMap(
              (value as Map).cast<String, dynamic>())),
      margins: Input.decodeList<GetThemeConfigurationSheetTileLayoutMargin>(
          map['margins'],
          (value) => GetThemeConfigurationSheetTileLayoutMargin.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
