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
    final map = <String, dynamic>{};
    final accentValue = accent;
    if (accentValue != null) {
      map['accent'] = accentValue;
    }
    final accentForegroundValue = accentForeground;
    if (accentForegroundValue != null) {
      map['accentForeground'] = accentForegroundValue;
    }
    final dangerValue = danger;
    if (dangerValue != null) {
      map['danger'] = dangerValue;
    }
    final dangerForegroundValue = dangerForeground;
    if (dangerForegroundValue != null) {
      map['dangerForeground'] = dangerForegroundValue;
    }
    final dimensionValue = dimension;
    if (dimensionValue != null) {
      map['dimension'] = dimensionValue;
    }
    final dimensionForegroundValue = dimensionForeground;
    if (dimensionForegroundValue != null) {
      map['dimensionForeground'] = dimensionForegroundValue;
    }
    final measureValue = measure;
    if (measureValue != null) {
      map['measure'] = measureValue;
    }
    final measureForegroundValue = measureForeground;
    if (measureForegroundValue != null) {
      map['measureForeground'] = measureForegroundValue;
    }
    final primaryBackgroundValue = primaryBackground;
    if (primaryBackgroundValue != null) {
      map['primaryBackground'] = primaryBackgroundValue;
    }
    final primaryForegroundValue = primaryForeground;
    if (primaryForegroundValue != null) {
      map['primaryForeground'] = primaryForegroundValue;
    }
    final secondaryBackgroundValue = secondaryBackground;
    if (secondaryBackgroundValue != null) {
      map['secondaryBackground'] = secondaryBackgroundValue;
    }
    final secondaryForegroundValue = secondaryForeground;
    if (secondaryForegroundValue != null) {
      map['secondaryForeground'] = secondaryForegroundValue;
    }
    final successValue = success;
    if (successValue != null) {
      map['success'] = successValue;
    }
    final successForegroundValue = successForeground;
    if (successForegroundValue != null) {
      map['successForeground'] = successForegroundValue;
    }
    final warningValue = warning;
    if (warningValue != null) {
      map['warning'] = warningValue;
    }
    final warningForegroundValue = warningForeground;
    if (warningForegroundValue != null) {
      map['warningForeground'] = warningForegroundValue;
    }
    return map;
  }

  factory ThemeConfigurationUiColorPalette.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationUiColorPalette(
      accent: map['accent'] == null ? null : map['accent'] as String,
      accentForeground: map['accentForeground'] == null
          ? null
          : map['accentForeground'] as String,
      danger: map['danger'] == null ? null : map['danger'] as String,
      dangerForeground: map['dangerForeground'] == null
          ? null
          : map['dangerForeground'] as String,
      dimension: map['dimension'] == null ? null : map['dimension'] as String,
      dimensionForeground: map['dimensionForeground'] == null
          ? null
          : map['dimensionForeground'] as String,
      measure: map['measure'] == null ? null : map['measure'] as String,
      measureForeground: map['measureForeground'] == null
          ? null
          : map['measureForeground'] as String,
      primaryBackground: map['primaryBackground'] == null
          ? null
          : map['primaryBackground'] as String,
      primaryForeground: map['primaryForeground'] == null
          ? null
          : map['primaryForeground'] as String,
      secondaryBackground: map['secondaryBackground'] == null
          ? null
          : map['secondaryBackground'] as String,
      secondaryForeground: map['secondaryForeground'] == null
          ? null
          : map['secondaryForeground'] as String,
      success: map['success'] == null ? null : map['success'] as String,
      successForeground: map['successForeground'] == null
          ? null
          : map['successForeground'] as String,
      warning: map['warning'] == null ? null : map['warning'] as String,
      warningForeground: map['warningForeground'] == null
          ? null
          : map['warningForeground'] as String,
    );
  }
}
