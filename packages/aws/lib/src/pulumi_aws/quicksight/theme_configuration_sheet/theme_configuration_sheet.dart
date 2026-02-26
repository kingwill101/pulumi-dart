// ignore_for_file: unused_element, unnecessary_cast

import '../theme_configuration_sheet_tile/theme_configuration_sheet_tile.dart';
import '../theme_configuration_sheet_tile_layout/theme_configuration_sheet_tile_layout.dart';

class ThemeConfigurationSheet {
  /// The display options for tiles. See tile.
  final ThemeConfigurationSheetTile? tile;

  /// The layout options for tiles. See tile_layout.
  final ThemeConfigurationSheetTileLayout? tileLayout;

  ThemeConfigurationSheet({
    this.tile,
    this.tileLayout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tileValue = tile;
    if (tileValue != null) {
      map['tile'] = tileValue.toMap();
    }
    final tileLayoutValue = tileLayout;
    if (tileLayoutValue != null) {
      map['tileLayout'] = tileLayoutValue.toMap();
    }
    return map;
  }

  factory ThemeConfigurationSheet.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheet(
      tile: map['tile'] == null
          ? null
          : ThemeConfigurationSheetTile.fromMap(
              (map['tile'] as Map).cast<String, dynamic>()),
      tileLayout: map['tileLayout'] == null
          ? null
          : ThemeConfigurationSheetTileLayout.fromMap(
              (map['tileLayout'] as Map).cast<String, dynamic>()),
    );
  }
}
