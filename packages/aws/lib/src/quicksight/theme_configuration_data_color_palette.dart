// ignore_for_file: unused_element, unnecessary_cast

class ThemeConfigurationDataColorPalette {
  /// List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  final List<String>? colors;

  /// The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  final String? emptyFillColor;

  /// The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  final List<String>? minMaxGradients;

  /// Creates a new [ThemeConfigurationDataColorPalette].
  /// [colors] List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  /// [emptyFillColor] The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  /// [minMaxGradients] The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  ThemeConfigurationDataColorPalette({
    this.colors,
    this.emptyFillColor,
    this.minMaxGradients,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final colorsValue = colors;
    if (colorsValue != null) {
      map['colors'] = colorsValue;
    }
    final emptyFillColorValue = emptyFillColor;
    if (emptyFillColorValue != null) {
      map['emptyFillColor'] = emptyFillColorValue;
    }
    final minMaxGradientsValue = minMaxGradients;
    if (minMaxGradientsValue != null) {
      map['minMaxGradients'] = minMaxGradientsValue;
    }
    return map;
  }

  factory ThemeConfigurationDataColorPalette.fromMap(Map<String, dynamic> map) {
    return ThemeConfigurationDataColorPalette(
      colors:
          map['colors'] == null ? null : (map['colors'] as List).cast<String>(),
      emptyFillColor: map['emptyFillColor'] == null
          ? null
          : map['emptyFillColor'] as String,
      minMaxGradients: map['minMaxGradients'] == null
          ? null
          : (map['minMaxGradients'] as List).cast<String>(),
    );
  }
}
