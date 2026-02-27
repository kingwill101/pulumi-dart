// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../theme_configuration_typography_font_family/theme_configuration_typography_font_family.dart';

class ThemeConfigurationTypography {
  /// Determines the list of font families. Maximum number of 5 items. See font_families.
  final List<ThemeConfigurationTypographyFontFamily>? fontFamilies;

  ThemeConfigurationTypography({
    this.fontFamilies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fontFamiliesValue = fontFamilies;
    if (fontFamiliesValue != null) {
      map['fontFamilies'] = pulumi.Input.encodeList<
          ThemeConfigurationTypographyFontFamily,
          Map<String, dynamic>>(fontFamiliesValue, (value) => value.toMap());
    }
    return map;
  }

  factory ThemeConfigurationTypography.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationTypography(
      fontFamilies: map['fontFamilies'] == null
          ? null
          : pulumi.Input.decodeList<ThemeConfigurationTypographyFontFamily>(
              map['fontFamilies'],
              (value) => ThemeConfigurationTypographyFontFamily.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
