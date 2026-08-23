// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration_data_color_palette.dart';
import 'theme_configuration_sheet.dart';
import 'theme_configuration_typography.dart';
import 'theme_configuration_ui_color_palette.dart';

class ThemeConfiguration {
  /// Color properties that apply to chart data colors. See data_color_palette.
  final pulumi.Input<ThemeConfigurationDataColorPalette>? dataColorPalette;
  /// Display options related to sheets. See sheet.
  final pulumi.Input<ThemeConfigurationSheet>? sheet;
  /// Determines the typography options. See typography.
  final pulumi.Input<ThemeConfigurationTypography>? typography;
  /// Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  final pulumi.Input<ThemeConfigurationUiColorPalette>? uiColorPalette;

  /// Creates a new [ThemeConfiguration].
  /// [dataColorPalette] Color properties that apply to chart data colors. See data_color_palette.
  /// [sheet] Display options related to sheets. See sheet.
  /// [typography] Determines the typography options. See typography.
  /// [uiColorPalette] Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  const ThemeConfiguration({
    this.dataColorPalette,
    this.sheet,
    this.typography,
    this.uiColorPalette,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataColorPalette': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationDataColorPalette, Map<String, dynamic>>(dataColorPalette, (value) => value.toMap()),
      'sheet': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationSheet, Map<String, dynamic>>(sheet, (value) => value.toMap()),
      'typography': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationTypography, Map<String, dynamic>>(typography, (value) => value.toMap()),
      'uiColorPalette': ?pulumi.Input.mapOptionalInputValue<ThemeConfigurationUiColorPalette, Map<String, dynamic>>(uiColorPalette, (value) => value.toMap()),
    };
  }

  factory ThemeConfiguration.fromMap(Map<String, dynamic> map) {
    return ThemeConfiguration(
      dataColorPalette: (() { final guardedValue = map['dataColorPalette']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationDataColorPalette.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sheet: (() { final guardedValue = map['sheet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationSheet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      typography: (() { final guardedValue = map['typography']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationTypography.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      uiColorPalette: (() { final guardedValue = map['uiColorPalette']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ThemeConfigurationUiColorPalette.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
