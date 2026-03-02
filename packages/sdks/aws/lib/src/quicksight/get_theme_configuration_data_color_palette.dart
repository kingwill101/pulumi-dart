// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetThemeConfigurationDataColorPalette {
  /// List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  final pulumi.Input<List<String>> colors;
  /// The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  final pulumi.Input<String> emptyFillColor;
  /// The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  final pulumi.Input<List<String>> minMaxGradients;

  /// Creates a new [GetThemeConfigurationDataColorPalette].
  /// [colors] List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  /// [emptyFillColor] The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  /// [minMaxGradients] The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  GetThemeConfigurationDataColorPalette({
    required this.colors,
    required this.emptyFillColor,
    required this.minMaxGradients,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colors': colors,
      'emptyFillColor': emptyFillColor,
      'minMaxGradients': minMaxGradients,
    };
  }

  factory GetThemeConfigurationDataColorPalette.fromMap(Map<String, dynamic> map) {
    return GetThemeConfigurationDataColorPalette(
      colors: ((map['colors'] as List).cast<String>()).input(),
      emptyFillColor: (map['emptyFillColor'] as String).input(),
      minMaxGradients: ((map['minMaxGradients'] as List).cast<String>()).input(),
    );
  }
}

