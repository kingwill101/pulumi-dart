// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_theme_configuration_sheet_tile_border/get_theme_configuration_sheet_tile_border.dart';

class GetThemeConfigurationSheetTile {
  /// The border around a tile. See border.
  final List<GetThemeConfigurationSheetTileBorder> borders;

  GetThemeConfigurationSheetTile({
    required this.borders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['borders'] = Input.encodeList<GetThemeConfigurationSheetTileBorder,
        Map<String, dynamic>>(borders, (value) => value.toMap());
    return map;
  }

  factory GetThemeConfigurationSheetTile.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTile(
      borders: Input.decodeList<GetThemeConfigurationSheetTileBorder>(
          map['borders'],
          (value) => GetThemeConfigurationSheetTileBorder.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
