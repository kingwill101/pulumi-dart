// ignore_for_file: unused_element, unnecessary_cast

class ThemeConfigurationTypographyFontFamily {
  /// Font family name.
  final String? fontFamily;

  ThemeConfigurationTypographyFontFamily({
    this.fontFamily,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fontFamilyValue = fontFamily;
    if (fontFamilyValue != null) {
      map['fontFamily'] = fontFamilyValue;
    }
    return map;
  }

  factory ThemeConfigurationTypographyFontFamily.fromMap(
      Map<String, dynamic> map) {
    return ThemeConfigurationTypographyFontFamily(
      fontFamily:
          map['fontFamily'] == null ? null : map['fontFamily'] as String,
    );
  }
}
