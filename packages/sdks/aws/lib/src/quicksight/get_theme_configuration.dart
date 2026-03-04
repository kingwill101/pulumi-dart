// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration_data_color_palette.dart';
import 'get_theme_configuration_sheet.dart';
import 'get_theme_configuration_typography.dart';
import 'get_theme_configuration_ui_color_palette.dart';

class GetThemeConfiguration {
  /// Color properties that apply to chart data colors. See data_color_palette.
  final pulumi.Input<List<GetThemeConfigurationDataColorPalette>>
  dataColorPalettes;

  /// Display options related to sheets. See sheet.
  final pulumi.Input<List<GetThemeConfigurationSheet>> sheets;

  /// Determines the typography options. See typography.
  final pulumi.Input<List<GetThemeConfigurationTypography>> typographies;

  /// Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  final pulumi.Input<List<GetThemeConfigurationUiColorPalette>> uiColorPalettes;

  /// Creates a new [GetThemeConfiguration].
  /// [dataColorPalettes] Color properties that apply to chart data colors. See data_color_palette.
  /// [sheets] Display options related to sheets. See sheet.
  /// [typographies] Determines the typography options. See typography.
  /// [uiColorPalettes] Color properties that apply to the UI and to charts, excluding the colors that apply to data. See ui_color_palette.
  GetThemeConfiguration({
    required this.dataColorPalettes,
    required this.sheets,
    required this.typographies,
    required this.uiColorPalettes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataColorPalettes':
          pulumi.Input.mapInputValue<
            List<GetThemeConfigurationDataColorPalette>,
            List<Map<String, dynamic>>
          >(
            dataColorPalettes,
            (value) =>
                pulumi.Input.encodeList<
                  GetThemeConfigurationDataColorPalette,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sheets':
          pulumi.Input.mapInputValue<
            List<GetThemeConfigurationSheet>,
            List<Map<String, dynamic>>
          >(
            sheets,
            (value) =>
                pulumi.Input.encodeList<
                  GetThemeConfigurationSheet,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'typographies':
          pulumi.Input.mapInputValue<
            List<GetThemeConfigurationTypography>,
            List<Map<String, dynamic>>
          >(
            typographies,
            (value) =>
                pulumi.Input.encodeList<
                  GetThemeConfigurationTypography,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'uiColorPalettes':
          pulumi.Input.mapInputValue<
            List<GetThemeConfigurationUiColorPalette>,
            List<Map<String, dynamic>>
          >(
            uiColorPalettes,
            (value) =>
                pulumi.Input.encodeList<
                  GetThemeConfigurationUiColorPalette,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetThemeConfiguration.fromMap(Map<String, dynamic> map) {
    return GetThemeConfiguration(
      dataColorPalettes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetThemeConfigurationDataColorPalette>(
          map['dataColorPalettes']!,
          (value) => GetThemeConfigurationDataColorPalette.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      sheets: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetThemeConfigurationSheet>(
          map['sheets']!,
          (value) => GetThemeConfigurationSheet.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      typographies: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetThemeConfigurationTypography>(
          map['typographies']!,
          (value) => GetThemeConfigurationTypography.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      uiColorPalettes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetThemeConfigurationUiColorPalette>(
          map['uiColorPalettes']!,
          (value) => GetThemeConfigurationUiColorPalette.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
