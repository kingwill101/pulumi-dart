// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration_sheet_tile_border.dart';

class GetThemeConfigurationSheetTile {
  /// The border around a tile. See border.
  final pulumi.Input<List<GetThemeConfigurationSheetTileBorder>> borders;

  /// Creates a new [GetThemeConfigurationSheetTile].
  /// [borders] The border around a tile. See border.
  GetThemeConfigurationSheetTile({
    required this.borders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'borders': pulumi.Input.mapInputValue<List<GetThemeConfigurationSheetTileBorder>, List<Map<String, dynamic>>>(borders, (value) => pulumi.Input.encodeList<GetThemeConfigurationSheetTileBorder, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetThemeConfigurationSheetTile.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTile(
      borders: pulumi.Input.fromValue(pulumi.Input.decodeList<GetThemeConfigurationSheetTileBorder>(map['borders']!, (value) => GetThemeConfigurationSheetTileBorder.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

