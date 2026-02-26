// ignore_for_file: unused_element, unnecessary_cast

import '../theme_configuration_sheet_tile_layout_gutter/theme_configuration_sheet_tile_layout_gutter.dart';
import '../theme_configuration_sheet_tile_layout_margin/theme_configuration_sheet_tile_layout_margin.dart';

class ThemeConfigurationSheetTileLayout {
  /// The gutter settings that apply between tiles. See gutter.
  final ThemeConfigurationSheetTileLayoutGutter? gutter;

  /// The margin settings that apply around the outside edge of sheets. See margin.
  final ThemeConfigurationSheetTileLayoutMargin? margin;

  ThemeConfigurationSheetTileLayout({
    this.gutter,
    this.margin,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gutterValue = gutter;
    if (gutterValue != null) {
      map['gutter'] = gutterValue.toMap();
    }
    final marginValue = margin;
    if (marginValue != null) {
      map['margin'] = marginValue.toMap();
    }
    return map;
  }

  factory ThemeConfigurationSheetTileLayout.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTileLayout(
      gutter: map['gutter'] == null
          ? null
          : ThemeConfigurationSheetTileLayoutGutter.fromMap(
              (map['gutter'] as Map).cast<String, dynamic>()),
      margin: map['margin'] == null
          ? null
          : ThemeConfigurationSheetTileLayoutMargin.fromMap(
              (map['margin'] as Map).cast<String, dynamic>()),
    );
  }
}
