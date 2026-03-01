// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration_sheet_tile.dart';
import 'get_theme_configuration_sheet_tile_layout.dart';

class GetThemeConfigurationSheet {
  /// The layout options for tiles. See tile_layout.
  final List<GetThemeConfigurationSheetTileLayout> tileLayouts;
  /// The display options for tiles. See tile.
  final List<GetThemeConfigurationSheetTile> tiles;

  /// Creates a new [GetThemeConfigurationSheet].
  /// [tileLayouts] The layout options for tiles. See tile_layout.
  /// [tiles] The display options for tiles. See tile.
  GetThemeConfigurationSheet({
    required this.tileLayouts,
    required this.tiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tileLayouts': pulumi.Input.encodeList<GetThemeConfigurationSheetTileLayout, Map<String, dynamic>>(tileLayouts, (value) => value.toMap()),
      'tiles': pulumi.Input.encodeList<GetThemeConfigurationSheetTile, Map<String, dynamic>>(tiles, (value) => value.toMap()),
    };
  }

  factory GetThemeConfigurationSheet.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheet(
      tileLayouts: pulumi.Input.decodeList<GetThemeConfigurationSheetTileLayout>(map['tileLayouts'], (value) => GetThemeConfigurationSheetTileLayout.fromMap((value as Map).cast<String, dynamic>())),
      tiles: pulumi.Input.decodeList<GetThemeConfigurationSheetTile>(map['tiles'], (value) => GetThemeConfigurationSheetTile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

