// ignore_for_file: unused_element, unnecessary_cast


class ThemeConfigurationTypographyFontFamily {
  /// Font family name.
  final String? fontFamily;

  /// Creates a new [ThemeConfigurationTypographyFontFamily].
  /// [fontFamily] Font family name.
  ThemeConfigurationTypographyFontFamily({
    this.fontFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamily': ?fontFamily,
    };
  }

  factory ThemeConfigurationTypographyFontFamily.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationTypographyFontFamily(
      fontFamily: map['fontFamily'] == null ? null : map['fontFamily'] as String,
    );
  }
}

