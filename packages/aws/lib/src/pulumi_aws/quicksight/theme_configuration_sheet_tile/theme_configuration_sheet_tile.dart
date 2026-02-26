// ignore_for_file: unused_element, unnecessary_cast

import '../theme_configuration_sheet_tile_border/theme_configuration_sheet_tile_border.dart';

class ThemeConfigurationSheetTile {
  /// The border around a tile. See border.
  final ThemeConfigurationSheetTileBorder? border;

  ThemeConfigurationSheetTile({
    this.border,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final borderValue = border;
    if (borderValue != null) {
      map['border'] = borderValue.toMap();
    }
    return map;
  }

  factory ThemeConfigurationSheetTile.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTile(
      border: map['border'] == null
          ? null
          : ThemeConfigurationSheetTileBorder.fromMap(
              (map['border'] as Map).cast<String, dynamic>()),
    );
  }
}
