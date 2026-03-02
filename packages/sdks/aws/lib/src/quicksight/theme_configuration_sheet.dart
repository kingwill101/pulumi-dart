// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration_sheet_tile.dart';
import 'theme_configuration_sheet_tile_layout.dart';

class ThemeConfigurationSheet {
  /// The display options for tiles. See tile.
  final pulumi.Input<ThemeConfigurationSheetTile>? tile;
  /// The layout options for tiles. See tile_layout.
  final pulumi.Input<ThemeConfigurationSheetTileLayout>? tileLayout;

  /// Creates a new [ThemeConfigurationSheet].
  /// [tile] The display options for tiles. See tile.
  /// [tileLayout] The layout options for tiles. See tile_layout.
  ThemeConfigurationSheet({
    this.tile,
    this.tileLayout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tile': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationSheetTile, Map<String, dynamic>>(tile, (value) => value.toMap()),
      'tileLayout': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationSheetTileLayout, Map<String, dynamic>>(tileLayout, (value) => value.toMap()),
    };
  }

  factory ThemeConfigurationSheet.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheet(
      tile: map['tile'] == null ? null : ((ThemeConfigurationSheetTile.fromMap((map['tile']! as Map).cast<String, dynamic>())).input()).input(),
      tileLayout: map['tileLayout'] == null ? null : ((ThemeConfigurationSheetTileLayout.fromMap((map['tileLayout']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

