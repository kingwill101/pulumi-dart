// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationTypographyFontFamily {
  /// Font family name.
  final pulumi.Input<String> fontFamily;

  /// Creates a new [GetThemeConfigurationTypographyFontFamily].
  /// [fontFamily] Font family name.
  const GetThemeConfigurationTypographyFontFamily({
    required this.fontFamily,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamily': fontFamily,
    };
  }

  factory GetThemeConfigurationTypographyFontFamily.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationTypographyFontFamily(
      fontFamily: pulumi.Input.fromValue(map['fontFamily'] as String),
    );
  }
}

