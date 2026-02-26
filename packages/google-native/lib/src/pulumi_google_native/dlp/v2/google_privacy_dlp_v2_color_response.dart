// ignore_for_file: unused_element, unnecessary_cast

/// Represents a color in the RGB color space.
class GooglePrivacyDlpV2ColorResponse {
  /// The amount of blue in the color as a value in the interval [0, 1].
  final double blue;

  /// The amount of green in the color as a value in the interval [0, 1].
  final double green;

  /// The amount of red in the color as a value in the interval [0, 1].
  final double red;

  GooglePrivacyDlpV2ColorResponse({
    required this.blue,
    required this.green,
    required this.red,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['blue'] = blue;
    map['green'] = green;
    map['red'] = red;
    return map;
  }

  factory GooglePrivacyDlpV2ColorResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2ColorResponse(
      blue: map['blue'] as double,
      green: map['green'] as double,
      red: map['red'] as double,
    );
  }
}
