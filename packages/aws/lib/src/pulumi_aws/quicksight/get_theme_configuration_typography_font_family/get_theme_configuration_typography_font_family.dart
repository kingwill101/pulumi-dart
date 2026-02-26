// ignore_for_file: unused_element, unnecessary_cast

class GetThemeConfigurationTypographyFontFamily {
  /// Font family name.
  final String fontFamily;

  GetThemeConfigurationTypographyFontFamily({
    required this.fontFamily,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fontFamily'] = fontFamily;
    return map;
  }

  factory GetThemeConfigurationTypographyFontFamily.fromMap(
      Map<String, dynamic> map) {
    return GetThemeConfigurationTypographyFontFamily(
      fontFamily: map['fontFamily'] as String,
    );
  }
}
