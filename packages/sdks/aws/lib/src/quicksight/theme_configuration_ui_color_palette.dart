// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThemeConfigurationUiColorPalette {
  /// Color (hexadecimal) that applies to selected states and buttons.
  final pulumi.Input<String?>? accent;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the accent color.
  final pulumi.Input<String?>? accentForeground;
  /// Color (hexadecimal) that applies to error messages.
  final pulumi.Input<String?>? danger;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the error color.
  final pulumi.Input<String?>? dangerForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as dimensions.
  final pulumi.Input<String?>? dimension;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the dimension color.
  final pulumi.Input<String?>? dimensionForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as measures.
  final pulumi.Input<String?>? measure;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the measure color.
  final pulumi.Input<String?>? measureForeground;
  /// Color (hexadecimal) that applies to visuals and other high emphasis UI.
  final pulumi.Input<String?>? primaryBackground;
  /// Color (hexadecimal) of text and other foreground elements that appear over the primary background regions, such as grid lines, borders, table banding, icons, and so on.
  final pulumi.Input<String?>? primaryForeground;
  /// Color (hexadecimal) that applies to the sheet background and sheet controls.
  final pulumi.Input<String?>? secondaryBackground;
  /// Color (hexadecimal) that applies to any sheet title, sheet control text, or UI that appears over the secondary background.
  final pulumi.Input<String?>? secondaryForeground;
  /// Color (hexadecimal) that applies to success messages, for example the check mark for a successful download.
  final pulumi.Input<String?>? success;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the success color.
  final pulumi.Input<String?>? successForeground;
  /// Color (hexadecimal) that applies to warning and informational messages.
  final pulumi.Input<String?>? warning;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the warning color.
  final pulumi.Input<String?>? warningForeground;

  /// Creates a new [ThemeConfigurationUiColorPalette].
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
  const ThemeConfigurationUiColorPalette({
    this.accent,
    this.accentForeground,
    this.danger,
    this.dangerForeground,
    this.dimension,
    this.dimensionForeground,
    this.measure,
    this.measureForeground,
    this.primaryBackground,
    this.primaryForeground,
    this.secondaryBackground,
    this.secondaryForeground,
    this.success,
    this.successForeground,
    this.warning,
    this.warningForeground,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accent': ?accent,
      'accentForeground': ?accentForeground,
      'danger': ?danger,
      'dangerForeground': ?dangerForeground,
      'dimension': ?dimension,
      'dimensionForeground': ?dimensionForeground,
      'measure': ?measure,
      'measureForeground': ?measureForeground,
      'primaryBackground': ?primaryBackground,
      'primaryForeground': ?primaryForeground,
      'secondaryBackground': ?secondaryBackground,
      'secondaryForeground': ?secondaryForeground,
      'success': ?success,
      'successForeground': ?successForeground,
      'warning': ?warning,
      'warningForeground': ?warningForeground,
    };
  }

  factory ThemeConfigurationUiColorPalette.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationUiColorPalette(
      accent: (() { final guardedValue = map['accent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accentForeground: (() { final guardedValue = map['accentForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      danger: (() { final guardedValue = map['danger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dangerForeground: (() { final guardedValue = map['dangerForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimension: (() { final guardedValue = map['dimension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensionForeground: (() { final guardedValue = map['dimensionForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      measure: (() { final guardedValue = map['measure']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      measureForeground: (() { final guardedValue = map['measureForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryBackground: (() { final guardedValue = map['primaryBackground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryForeground: (() { final guardedValue = map['primaryForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryBackground: (() { final guardedValue = map['secondaryBackground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryForeground: (() { final guardedValue = map['secondaryForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      success: (() { final guardedValue = map['success']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successForeground: (() { final guardedValue = map['successForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warning: (() { final guardedValue = map['warning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warningForeground: (() { final guardedValue = map['warningForeground']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
