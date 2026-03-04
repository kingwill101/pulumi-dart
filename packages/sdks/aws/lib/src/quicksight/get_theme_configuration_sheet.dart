// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration_sheet_tile.dart';
import 'get_theme_configuration_sheet_tile_layout.dart';

class GetThemeConfigurationSheet {
  /// The layout options for tiles. See tile_layout.
  final pulumi.Input<List<GetThemeConfigurationSheetTileLayout>> tileLayouts;

  /// The display options for tiles. See tile.
  final pulumi.Input<List<GetThemeConfigurationSheetTile>> tiles;

  /// Creates a new [GetThemeConfigurationSheet].
  /// [tileLayouts] The layout options for tiles. See tile_layout.
  /// [tiles] The display options for tiles. See tile.
  GetThemeConfigurationSheet({required this.tileLayouts, required this.tiles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tileLayouts':
          pulumi.Input.mapInputValue<
            List<GetThemeConfigurationSheetTileLayout>,
            List<Map<String, dynamic>>
          >(
            tileLayouts,
            (value) =>
                pulumi.Input.encodeList<
                  GetThemeConfigurationSheetTileLayout,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tiles':
          pulumi.Input.mapInputValue<
            List<GetThemeConfigurationSheetTile>,
            List<Map<String, dynamic>>
          >(
            tiles,
            (value) =>
                pulumi.Input.encodeList<
                  GetThemeConfigurationSheetTile,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetThemeConfigurationSheet.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheet(
      tileLayouts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetThemeConfigurationSheetTileLayout>(
          map['tileLayouts']!,
          (value) => GetThemeConfigurationSheetTileLayout.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tiles: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetThemeConfigurationSheetTile>(
          map['tiles']!,
          (value) => GetThemeConfigurationSheetTile.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
