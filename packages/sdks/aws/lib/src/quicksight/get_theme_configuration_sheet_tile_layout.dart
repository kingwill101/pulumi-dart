// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration_sheet_tile_layout_gutter.dart';
import 'get_theme_configuration_sheet_tile_layout_margin.dart';

class GetThemeConfigurationSheetTileLayout {
  /// The gutter settings that apply between tiles. See gutter.
  final pulumi.Input<List<GetThemeConfigurationSheetTileLayoutGutter>> gutters;
  /// The margin settings that apply around the outside edge of sheets. See margin.
  final pulumi.Input<List<GetThemeConfigurationSheetTileLayoutMargin>> margins;

  /// Creates a new [GetThemeConfigurationSheetTileLayout].
  /// [gutters] The gutter settings that apply between tiles. See gutter.
  /// [margins] The margin settings that apply around the outside edge of sheets. See margin.
  const GetThemeConfigurationSheetTileLayout({
    required this.gutters,
    required this.margins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gutters': pulumi.Input.mapInputValue<List<GetThemeConfigurationSheetTileLayoutGutter>, List<Map<String, dynamic>>>(gutters, (value) => pulumi.Input.encodeList<GetThemeConfigurationSheetTileLayoutGutter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'margins': pulumi.Input.mapInputValue<List<GetThemeConfigurationSheetTileLayoutMargin>, List<Map<String, dynamic>>>(margins, (value) => pulumi.Input.encodeList<GetThemeConfigurationSheetTileLayoutMargin, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetThemeConfigurationSheetTileLayout.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationSheetTileLayout(
      gutters: pulumi.Input.fromValue(pulumi.Input.decodeList<GetThemeConfigurationSheetTileLayoutGutter>(map['gutters']!, (value) => GetThemeConfigurationSheetTileLayoutGutter.fromMap((value as Map).cast<String, dynamic>()))),
      margins: pulumi.Input.fromValue(pulumi.Input.decodeList<GetThemeConfigurationSheetTileLayoutMargin>(map['margins']!, (value) => GetThemeConfigurationSheetTileLayoutMargin.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

