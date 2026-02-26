// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_theme_configuration_sheet_tile/get_theme_configuration_sheet_tile.dart';
import '../get_theme_configuration_sheet_tile_layout/get_theme_configuration_sheet_tile_layout.dart';

class GetThemeConfigurationSheet {
  /// The layout options for tiles. See tile_layout.
  final List<GetThemeConfigurationSheetTileLayout> tileLayouts;

  /// The display options for tiles. See tile.
  final List<GetThemeConfigurationSheetTile> tiles;

  GetThemeConfigurationSheet({
    required this.tileLayouts,
    required this.tiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tileLayouts'] = Input.encodeList<GetThemeConfigurationSheetTileLayout,
        Map<String, dynamic>>(tileLayouts, (value) => value.toMap());
    map['tiles'] =
        Input.encodeList<GetThemeConfigurationSheetTile, Map<String, dynamic>>(
            tiles, (value) => value.toMap());
    return map;
  }

  factory GetThemeConfigurationSheet.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheet(
      tileLayouts: Input.decodeList<GetThemeConfigurationSheetTileLayout>(
          map['tileLayouts'],
          (value) => GetThemeConfigurationSheetTileLayout.fromMap(
              (value as Map).cast<String, dynamic>())),
      tiles: Input.decodeList<GetThemeConfigurationSheetTile>(
          map['tiles'],
          (value) => GetThemeConfigurationSheetTile.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
