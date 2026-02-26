// ignore_for_file: unused_element, unnecessary_cast

import '../theme_configuration_data_color_palette/theme_configuration_data_color_palette.dart';
import '../theme_configuration_sheet/theme_configuration_sheet.dart';
import '../theme_configuration_typography/theme_configuration_typography.dart';
import '../theme_configuration_ui_color_palette/theme_configuration_ui_color_palette.dart';

class ThemeConfiguration {
  /// Color properties that apply to chart data colors. See data_color_palette.
  final ThemeConfigurationDataColorPalette? dataColorPalette;

  /// Display options related to sheets. See sheet.
  final ThemeConfigurationSheet? sheet;

  /// Determines the typography options. See typography.
  final ThemeConfigurationTypography? typography;

  /// Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  final ThemeConfigurationUiColorPalette? uiColorPalette;

  ThemeConfiguration({
    this.dataColorPalette,
    this.sheet,
    this.typography,
    this.uiColorPalette,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataColorPaletteValue = dataColorPalette;
    if (dataColorPaletteValue != null) {
      map['dataColorPalette'] = dataColorPaletteValue.toMap();
    }
    final sheetValue = sheet;
    if (sheetValue != null) {
      map['sheet'] = sheetValue.toMap();
    }
    final typographyValue = typography;
    if (typographyValue != null) {
      map['typography'] = typographyValue.toMap();
    }
    final uiColorPaletteValue = uiColorPalette;
    if (uiColorPaletteValue != null) {
      map['uiColorPalette'] = uiColorPaletteValue.toMap();
    }
    return map;
  }

  factory ThemeConfiguration.fromMap(Map<String, dynamic> map) {
    return ThemeConfiguration(
      dataColorPalette: map['dataColorPalette'] == null
          ? null
          : ThemeConfigurationDataColorPalette.fromMap(
              (map['dataColorPalette'] as Map).cast<String, dynamic>()),
      sheet: map['sheet'] == null
          ? null
          : ThemeConfigurationSheet.fromMap(
              (map['sheet'] as Map).cast<String, dynamic>()),
      typography: map['typography'] == null
          ? null
          : ThemeConfigurationTypography.fromMap(
              (map['typography'] as Map).cast<String, dynamic>()),
      uiColorPalette: map['uiColorPalette'] == null
          ? null
          : ThemeConfigurationUiColorPalette.fromMap(
              (map['uiColorPalette'] as Map).cast<String, dynamic>()),
    );
  }
}
