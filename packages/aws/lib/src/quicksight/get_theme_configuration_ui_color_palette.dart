// ignore_for_file: unused_element, unnecessary_cast


class GetThemeConfigurationUiColorPalette {
  /// Color (hexadecimal) that applies to selected states and buttons.
  final String accent;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the accent color.
  final String accentForeground;
  /// Color (hexadecimal) that applies to error messages.
  final String danger;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the error color.
  final String dangerForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as dimensions.
  final String dimension;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the dimension color.
  final String dimensionForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as measures.
  final String measure;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the measure color.
  final String measureForeground;
  /// Color (hexadecimal) that applies to visuals and other high emphasis UI.
  final String primaryBackground;
  /// Color (hexadecimal) of text and other foreground elements that appear over the primary background regions, such as grid lines, borders, table banding, icons, and so on.
  final String primaryForeground;
  /// Color (hexadecimal) that applies to the sheet background and sheet controls.
  final String secondaryBackground;
  /// Color (hexadecimal) that applies to any sheet title, sheet control text, or UI that appears over the secondary background.
  final String secondaryForeground;
  /// Color (hexadecimal) that applies to success messages, for example the check mark for a successful download.
  final String success;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the success color.
  final String successForeground;
  /// Color (hexadecimal) that applies to warning and informational messages.
  final String warning;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the warning color.
  final String warningForeground;

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
      accent: map['accent'] as String,
      accentForeground: map['accentForeground'] as String,
      danger: map['danger'] as String,
      dangerForeground: map['dangerForeground'] as String,
      dimension: map['dimension'] as String,
      dimensionForeground: map['dimensionForeground'] as String,
      measure: map['measure'] as String,
      measureForeground: map['measureForeground'] as String,
      primaryBackground: map['primaryBackground'] as String,
      primaryForeground: map['primaryForeground'] as String,
      secondaryBackground: map['secondaryBackground'] as String,
      secondaryForeground: map['secondaryForeground'] as String,
      success: map['success'] as String,
      successForeground: map['successForeground'] as String,
      warning: map['warning'] as String,
      warningForeground: map['warningForeground'] as String,
    );
  }
}

