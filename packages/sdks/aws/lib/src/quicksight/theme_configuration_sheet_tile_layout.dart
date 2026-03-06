// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration_sheet_tile_layout_gutter.dart';
import 'theme_configuration_sheet_tile_layout_margin.dart';

class ThemeConfigurationSheetTileLayout {
  /// The gutter settings that apply between tiles. See gutter.
  final pulumi.Input<ThemeConfigurationSheetTileLayoutGutter>? gutter;
  /// The margin settings that apply around the outside edge of sheets. See margin.
  final pulumi.Input<ThemeConfigurationSheetTileLayoutMargin>? margin;

  /// Creates a new [ThemeConfigurationSheetTileLayout].
  /// [gutter] The gutter settings that apply between tiles. See gutter.
  /// [margin] The margin settings that apply around the outside edge of sheets. See margin.
  const ThemeConfigurationSheetTileLayout({
    this.gutter,
    this.margin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gutter': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationSheetTileLayoutGutter, Map<String, dynamic>>(gutter, (value) => value.toMap()),
      'margin': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationSheetTileLayoutMargin, Map<String, dynamic>>(margin, (value) => value.toMap()),
    };
  }

  factory ThemeConfigurationSheetTileLayout.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationSheetTileLayout(
      gutter: (() { final guardedValue = map['gutter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationSheetTileLayoutGutter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      margin: (() { final guardedValue = map['margin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationSheetTileLayoutMargin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

