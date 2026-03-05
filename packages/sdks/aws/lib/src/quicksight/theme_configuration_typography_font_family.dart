// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThemeConfigurationTypographyFontFamily {
  /// Font family name.
  final pulumi.Input<String>? fontFamily;

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
      fontFamily: (() { final guardedValue = map['fontFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

