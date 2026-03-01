// ignore_for_file: unused_element, unnecessary_cast

/// Color preprocessing configuration. **Note:** This configuration is not supported.
class ColorResponse {
  /// Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness and 1 is maximum brightness. 0 is no change. The default is 0.
  final double brightness;

  /// Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The default is 0.
  final double contrast;

  /// Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desaturated and 1 is maximum saturation. 0 is no change. The default is 0.
  final double saturation;

  /// Creates a new [ColorResponse].
  /// [brightness] Control brightness of the video. Enter a value between -1 and 1, where -1 is minimum brightness and 1 is maximum brightness. 0 is no change. The default is 0.
  /// [contrast] Control black and white contrast of the video. Enter a value between -1 and 1, where -1 is minimum contrast and 1 is maximum contrast. 0 is no change. The default is 0.
  /// [saturation] Control color saturation of the video. Enter a value between -1 and 1, where -1 is fully desaturated and 1 is maximum saturation. 0 is no change. The default is 0.
  ColorResponse({
    required this.brightness,
    required this.contrast,
    required this.saturation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brightness': brightness,
      'contrast': contrast,
      'saturation': saturation,
    };
  }

  factory ColorResponse.fromMap(Map<String, dynamic> map) {
    return ColorResponse(
      brightness: map['brightness'] as double,
      contrast: map['contrast'] as double,
      saturation: map['saturation'] as double,
    );
  }
}
