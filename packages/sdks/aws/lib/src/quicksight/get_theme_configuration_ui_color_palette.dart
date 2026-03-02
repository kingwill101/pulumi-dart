// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationUiColorPalette {
  /// Color (hexadecimal) that applies to selected states and buttons.
  final pulumi.Input<String> accent;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the accent color.
  final pulumi.Input<String> accentForeground;
  /// Color (hexadecimal) that applies to error messages.
  final pulumi.Input<String> danger;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the error color.
  final pulumi.Input<String> dangerForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as dimensions.
  final pulumi.Input<String> dimension;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the dimension color.
  final pulumi.Input<String> dimensionForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as measures.
  final pulumi.Input<String> measure;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the measure color.
  final pulumi.Input<String> measureForeground;
  /// Color (hexadecimal) that applies to visuals and other high emphasis UI.
  final pulumi.Input<String> primaryBackground;
  /// Color (hexadecimal) of text and other foreground elements that appear over the primary background regions, such as grid lines, borders, table banding, icons, and so on.
  final pulumi.Input<String> primaryForeground;
  /// Color (hexadecimal) that applies to the sheet background and sheet controls.
  final pulumi.Input<String> secondaryBackground;
  /// Color (hexadecimal) that applies to any sheet title, sheet control text, or UI that appears over the secondary background.
  final pulumi.Input<String> secondaryForeground;
  /// Color (hexadecimal) that applies to success messages, for example the check mark for a successful download.
  final pulumi.Input<String> success;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the success color.
  final pulumi.Input<String> successForeground;
  /// Color (hexadecimal) that applies to warning and informational messages.
  final pulumi.Input<String> warning;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the warning color.
  final pulumi.Input<String> warningForeground;

  /// Creates a new [GetThemeConfigurationUiColorPalette].
  /// [accent] Color (hexadecimal) that applies to selected states and buttons.
  /// [accentForeground] Color (hexadecimal) that applies to any text or other elements that appear over the accent color.
  /// [danger] Color (hexadecimal) that applies to error messages.
  /// [dangerForeground] Color (hexadecimal) that applies to any text or other elements that appear over the error color.
  /// [dimension] Color (hexadecimal) that applies to the names of fields that are identified as dimensions.
  /// [dimensionForeground] Color (hexadecimal) that applies to any text or other elements that appear over the dimension color.
  /// [measure] Color (hexadecimal) that applies to the names of fields that are identified as measures.
  /// [measureForeground] Color (hexadecimal) that applies to any text or other elements that appear over the measure color.
  /// [primaryBackground] Color (hexadecimal) that applies to visuals and other high emphasis UI.
  /// [primaryForeground] Color (hexadecimal) of text and other foreground elements that appear over the primary background regions, such as grid lines, borders, table banding, icons, and so on.
  /// [secondaryBackground] Color (hexadecimal) that applies to the sheet background and sheet controls.
  /// [secondaryForeground] Color (hexadecimal) that applies to any sheet title, sheet control text, or UI that appears over the secondary background.
  /// [success] Color (hexadecimal) that applies to success messages, for example the check mark for a successful download.
  /// [successForeground] Color (hexadecimal) that applies to any text or other elements that appear over the success color.
  /// [warning] Color (hexadecimal) that applies to warning and informational messages.
  /// [warningForeground] Color (hexadecimal) that applies to any text or other elements that appear over the warning color.
  GetThemeConfigurationUiColorPalette({
    required this.accent,
    required this.accentForeground,
    required this.danger,
    required this.dangerForeground,
    required this.dimension,
    required this.dimensionForeground,
    required this.measure,
    required this.measureForeground,
    required this.primaryBackground,
    required this.primaryForeground,
    required this.secondaryBackground,
    required this.secondaryForeground,
    required this.success,
    required this.successForeground,
    required this.warning,
    required this.warningForeground,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accent': accent,
      'accentForeground': accentForeground,
      'danger': danger,
      'dangerForeground': dangerForeground,
      'dimension': dimension,
      'dimensionForeground': dimensionForeground,
      'measure': measure,
      'measureForeground': measureForeground,
      'primaryBackground': primaryBackground,
      'primaryForeground': primaryForeground,
      'secondaryBackground': secondaryBackground,
      'secondaryForeground': secondaryForeground,
      'success': success,
      'successForeground': successForeground,
      'warning': warning,
      'warningForeground': warningForeground,
    };
  }

  factory GetThemeConfigurationUiColorPalette.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationUiColorPalette(
      accent: (map['accent'] as String).input(),
      accentForeground: (map['accentForeground'] as String).input(),
      danger: (map['danger'] as String).input(),
      dangerForeground: (map['dangerForeground'] as String).input(),
      dimension: (map['dimension'] as String).input(),
      dimensionForeground: (map['dimensionForeground'] as String).input(),
      measure: (map['measure'] as String).input(),
      measureForeground: (map['measureForeground'] as String).input(),
      primaryBackground: (map['primaryBackground'] as String).input(),
      primaryForeground: (map['primaryForeground'] as String).input(),
      secondaryBackground: (map['secondaryBackground'] as String).input(),
      secondaryForeground: (map['secondaryForeground'] as String).input(),
      success: (map['success'] as String).input(),
      successForeground: (map['successForeground'] as String).input(),
      warning: (map['warning'] as String).input(),
      warningForeground: (map['warningForeground'] as String).input(),
    );
  }
}

