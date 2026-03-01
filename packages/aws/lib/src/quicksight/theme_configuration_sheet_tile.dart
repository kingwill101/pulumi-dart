// ignore_for_file: unused_element, unnecessary_cast

import 'theme_configuration_sheet_tile_border.dart';

class ThemeConfigurationSheetTile {
  /// The border around a tile. See border.
  final ThemeConfigurationSheetTileBorder? border;

  /// Creates a new [ThemeConfigurationSheetTile].
  /// [border] The border around a tile. See border.
  ThemeConfigurationSheetTile({this.border});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'border': ?border == null ? null : border!.toMap(),
    };
  }

  factory ThemeConfigurationSheetTile.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTile(
      border: map['border'] == null
          ? null
          : ThemeConfigurationSheetTileBorder.fromMap(
              (map['border'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
