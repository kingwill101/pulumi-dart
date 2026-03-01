// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_theme_configuration_typography_font_family.dart';

class GetThemeConfigurationTypography {
  /// Determines the list of font families. Maximum number of 5 items. See font_families.
  final List<GetThemeConfigurationTypographyFontFamily> fontFamilies;

  /// Creates a new [GetThemeConfigurationTypography].
  /// [fontFamilies] Determines the list of font families. Maximum number of 5 items. See font_families.
  GetThemeConfigurationTypography({
    required this.fontFamilies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fontFamilies': pulumi.Input.encodeList<GetThemeConfigurationTypographyFontFamily, Map<String, dynamic>>(fontFamilies, (value) => value.toMap()),
    };
  }

  factory GetThemeConfigurationTypography.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationTypography(
      fontFamilies: pulumi.Input.decodeList<GetThemeConfigurationTypographyFontFamily>(map['fontFamilies'], (value) => GetThemeConfigurationTypographyFontFamily.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

