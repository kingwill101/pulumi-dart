// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'theme_configuration_typography_font_family.dart';

class ThemeConfigurationTypography {
  /// Determines the list of font families. Maximum number of 5 items. See font_families.
  final List<ThemeConfigurationTypographyFontFamily>? fontFamilies;

  /// Creates a new [ThemeConfigurationTypography].
  /// [fontFamilies] Determines the list of font families. Maximum number of 5 items. See font_families.
  ThemeConfigurationTypography({
    this.fontFamilies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamilies': ?fontFamilies == null ? null : pulumi.Input.encodeList<ThemeConfigurationTypographyFontFamily, Map<String, dynamic>>(fontFamilies!, (value) => value.toMap()),
    };
  }

  factory ThemeConfigurationTypography.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationTypography(
      fontFamilies: map['fontFamilies'] == null ? null : pulumi.Input.decodeList<ThemeConfigurationTypographyFontFamily>(map['fontFamilies'], (value) => ThemeConfigurationTypographyFontFamily.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

