// ignore_for_file: unused_element, unnecessary_cast

import 'theme_configuration_sheet_tile.dart';
import 'theme_configuration_sheet_tile_layout.dart';

class ThemeConfigurationSheet {
  /// The display options for tiles. See tile.
  final ThemeConfigurationSheetTile? tile;
  /// The layout options for tiles. See tile_layout.
  final ThemeConfigurationSheetTileLayout? tileLayout;

  /// Creates a new [ThemeConfigurationSheet].
  /// [tile] The display options for tiles. See tile.
  /// [tileLayout] The layout options for tiles. See tile_layout.
  ThemeConfigurationSheet({
    this.tile,
    this.tileLayout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tile': ?tile == null ? null : tile!.toMap(),
      'tileLayout': ?tileLayout == null ? null : tileLayout!.toMap(),
    };
  }

  factory ThemeConfigurationSheet.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheet(
      tile: map['tile'] == null ? null : ThemeConfigurationSheetTile.fromMap((map['tile'] as Map).cast<String, dynamic>()),
      tileLayout: map['tileLayout'] == null ? null : ThemeConfigurationSheetTileLayout.fromMap((map['tileLayout'] as Map).cast<String, dynamic>()),
    );
  }
}

