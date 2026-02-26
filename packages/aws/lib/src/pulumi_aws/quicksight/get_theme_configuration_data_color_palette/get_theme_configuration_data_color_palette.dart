// ignore_for_file: unused_element, unnecessary_cast

class GetThemeConfigurationDataColorPalette {
  /// List of hexadecimal codes for the colors. Minimum of 8 items and maximum of 20 items.
  final List<String> colors;

  /// The hexadecimal code of a color that applies to charts where a lack of data is highlighted.
  final String emptyFillColor;

  /// The minimum and maximum hexadecimal codes that describe a color gradient. List of exactly 2 items.
  final List<String> minMaxGradients;

  GetThemeConfigurationDataColorPalette({
    required this.colors,
    required this.emptyFillColor,
    required this.minMaxGradients,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['colors'] = colors;
    map['emptyFillColor'] = emptyFillColor;
    map['minMaxGradients'] = minMaxGradients;
    return map;
  }

  factory GetThemeConfigurationDataColorPalette.fromMap(
      Map<String, dynamic> map) {
    return GetThemeConfigurationDataColorPalette(
      colors: (map['colors'] as List).cast<String>(),
      emptyFillColor: map['emptyFillColor'] as String,
      minMaxGradients: (map['minMaxGradients'] as List).cast<String>(),
    );
  }
}
