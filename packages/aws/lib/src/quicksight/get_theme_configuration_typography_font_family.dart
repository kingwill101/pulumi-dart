// ignore_for_file: unused_element, unnecessary_cast


class GetThemeConfigurationTypographyFontFamily {
  /// Font family name.
  final String fontFamily;

  /// Creates a new [GetThemeConfigurationTypographyFontFamily].
  /// [fontFamily] Font family name.
  GetThemeConfigurationTypographyFontFamily({
    required this.fontFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamily': fontFamily,
    };
  }

  factory GetThemeConfigurationTypographyFontFamily.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationTypographyFontFamily(
      fontFamily: map['fontFamily'] as String,
    );
  }
}

