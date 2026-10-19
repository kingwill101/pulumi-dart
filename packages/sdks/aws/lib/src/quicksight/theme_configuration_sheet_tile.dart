// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration_sheet_tile_border.dart';

class ThemeConfigurationSheetTile {
  /// Border around a tile. See border.
  final pulumi.Input<ThemeConfigurationSheetTileBorder?>? border;

  /// Creates a new [ThemeConfigurationSheetTile].
  /// [border] Border around a tile. See border.
  const ThemeConfigurationSheetTile({
    this.border,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'border': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationSheetTileBorder, Map<String, dynamic>>(border, (value) => value.toMap()),
    };
  }

  factory ThemeConfigurationSheetTile.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTile(
      border: (() { final guardedValue = map['border']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationSheetTileBorder.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
