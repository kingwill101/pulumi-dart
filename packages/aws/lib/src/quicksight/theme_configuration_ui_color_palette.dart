// ignore_for_file: unused_element, unnecessary_cast


class ThemeConfigurationUiColorPalette {
  /// Color (hexadecimal) that applies to selected states and buttons.
  final String? accent;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the accent color.
  final String? accentForeground;
  /// Color (hexadecimal) that applies to error messages.
  final String? danger;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the error color.
  final String? dangerForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as dimensions.
  final String? dimension;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the dimension color.
  final String? dimensionForeground;
  /// Color (hexadecimal) that applies to the names of fields that are identified as measures.
  final String? measure;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the measure color.
  final String? measureForeground;
  /// Color (hexadecimal) that applies to visuals and other high emphasis UI.
  final String? primaryBackground;
  /// Color (hexadecimal) of text and other foreground elements that appear over the primary background regions, such as grid lines, borders, table banding, icons, and so on.
  final String? primaryForeground;
  /// Color (hexadecimal) that applies to the sheet background and sheet controls.
  final String? secondaryBackground;
  /// Color (hexadecimal) that applies to any sheet title, sheet control text, or UI that appears over the secondary background.
  final String? secondaryForeground;
  /// Color (hexadecimal) that applies to success messages, for example the check mark for a successful download.
  final String? success;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the success color.
  final String? successForeground;
  /// Color (hexadecimal) that applies to warning and informational messages.
  final String? warning;
  /// Color (hexadecimal) that applies to any text or other elements that appear over the warning color.
  final String? warningForeground;

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
  ThemeConfigurationUiColorPalette({
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
      accent: map['accent'] == null ? null : map['accent'] as String,
      accentForeground: map['accentForeground'] == null ? null : map['accentForeground'] as String,
      danger: map['danger'] == null ? null : map['danger'] as String,
      dangerForeground: map['dangerForeground'] == null ? null : map['dangerForeground'] as String,
      dimension: map['dimension'] == null ? null : map['dimension'] as String,
      dimensionForeground: map['dimensionForeground'] == null ? null : map['dimensionForeground'] as String,
      measure: map['measure'] == null ? null : map['measure'] as String,
      measureForeground: map['measureForeground'] == null ? null : map['measureForeground'] as String,
      primaryBackground: map['primaryBackground'] == null ? null : map['primaryBackground'] as String,
      primaryForeground: map['primaryForeground'] == null ? null : map['primaryForeground'] as String,
      secondaryBackground: map['secondaryBackground'] == null ? null : map['secondaryBackground'] as String,
      secondaryForeground: map['secondaryForeground'] == null ? null : map['secondaryForeground'] as String,
      success: map['success'] == null ? null : map['success'] as String,
      successForeground: map['successForeground'] == null ? null : map['successForeground'] as String,
      warning: map['warning'] == null ? null : map['warning'] as String,
      warningForeground: map['warningForeground'] == null ? null : map['warningForeground'] as String,
    );
  }
}

