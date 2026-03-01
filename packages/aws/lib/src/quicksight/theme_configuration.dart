// ignore_for_file: unused_element, unnecessary_cast

import 'theme_configuration_data_color_palette.dart';
import 'theme_configuration_sheet.dart';
import 'theme_configuration_typography.dart';
import 'theme_configuration_ui_color_palette.dart';

class ThemeConfiguration {
  /// Color properties that apply to chart data colors. See data_color_palette.
  final ThemeConfigurationDataColorPalette? dataColorPalette;

  /// Display options related to sheets. See sheet.
  final ThemeConfigurationSheet? sheet;

  /// Determines the typography options. See typography.
  final ThemeConfigurationTypography? typography;

  /// Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  final ThemeConfigurationUiColorPalette? uiColorPalette;

  /// Creates a new [ThemeConfiguration].
  /// [dataColorPalette] Color properties that apply to chart data colors. See data_color_palette.
  /// [sheet] Display options related to sheets. See sheet.
  /// [typography] Determines the typography options. See typography.
  /// [uiColorPalette] Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  ThemeConfiguration({
    this.dataColorPalette,
    this.sheet,
    this.typography,
    this.uiColorPalette,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataColorPalette': ?dataColorPalette == null
          ? null
          : dataColorPalette!.toMap(),
      'sheet': ?sheet == null ? null : sheet!.toMap(),
      'typography': ?typography == null ? null : typography!.toMap(),
      'uiColorPalette': ?uiColorPalette == null
          ? null
          : uiColorPalette!.toMap(),
    };
  }

  factory ThemeConfiguration.fromMap(Map<String, dynamic> map) {
    return ThemeConfiguration(
      dataColorPalette: map['dataColorPalette'] == null
          ? null
          : ThemeConfigurationDataColorPalette.fromMap(
              (map['dataColorPalette'] as Map).cast<String, dynamic>(),
            ),
      sheet: map['sheet'] == null
          ? null
          : ThemeConfigurationSheet.fromMap(
              (map['sheet'] as Map).cast<String, dynamic>(),
            ),
      typography: map['typography'] == null
          ? null
          : ThemeConfigurationTypography.fromMap(
              (map['typography'] as Map).cast<String, dynamic>(),
            ),
      uiColorPalette: map['uiColorPalette'] == null
          ? null
          : ThemeConfigurationUiColorPalette.fromMap(
              (map['uiColorPalette'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
