// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThemeConfigurationDataColorPalette {
  /// List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  final pulumi.Input<List<String>>? colors;
  /// The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  final pulumi.Input<String>? emptyFillColor;
  /// The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  final pulumi.Input<List<String>>? minMaxGradients;

  /// Creates a new [ThemeConfigurationDataColorPalette].
  /// [colors] List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  /// [emptyFillColor] The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  /// [minMaxGradients] The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  const ThemeConfigurationDataColorPalette({
    this.colors,
    this.emptyFillColor,
    this.minMaxGradients,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'colors': ?colors,
      'emptyFillColor': ?emptyFillColor,
      'minMaxGradients': ?minMaxGradients,
    };
  }

  factory ThemeConfigurationDataColorPalette.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationDataColorPalette(
      colors: (() { final guardedValue = map['colors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      emptyFillColor: (() { final guardedValue = map['emptyFillColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minMaxGradients: (() { final guardedValue = map['minMaxGradients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
