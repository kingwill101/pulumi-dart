// ignore_for_file: unused_element, unnecessary_cast

/// Video cropping configuration for the input video. The cropped input video is scaled to match the output resolution.
class Crop {
  /// The number of pixels to crop from the bottom. The default is 0.
  final int? bottomPixels;

  /// The number of pixels to crop from the left. The default is 0.
  final int? leftPixels;

  /// The number of pixels to crop from the right. The default is 0.
  final int? rightPixels;

  /// The number of pixels to crop from the top. The default is 0.
  final int? topPixels;

  /// Creates a new [Crop].
  /// [bottomPixels] The number of pixels to crop from the bottom. The default is 0.
  /// [leftPixels] The number of pixels to crop from the left. The default is 0.
  /// [rightPixels] The number of pixels to crop from the right. The default is 0.
  /// [topPixels] The number of pixels to crop from the top. The default is 0.
  Crop({
    this.bottomPixels,
    this.leftPixels,
    this.rightPixels,
    this.topPixels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bottomPixelsValue = bottomPixels;
    if (bottomPixelsValue != null) {
      map['bottomPixels'] = bottomPixelsValue;
    }
    final leftPixelsValue = leftPixels;
    if (leftPixelsValue != null) {
      map['leftPixels'] = leftPixelsValue;
    }
    final rightPixelsValue = rightPixels;
    if (rightPixelsValue != null) {
      map['rightPixels'] = rightPixelsValue;
    }
    final topPixelsValue = topPixels;
    if (topPixelsValue != null) {
      map['topPixels'] = topPixelsValue;
    }
    return map;
  }

  factory Crop.fromMap(Map<String, dynamic> map) {
    return Crop(
      bottomPixels:
          map['bottomPixels'] == null ? null : map['bottomPixels'] as int,
      leftPixels: map['leftPixels'] == null ? null : map['leftPixels'] as int,
      rightPixels:
          map['rightPixels'] == null ? null : map['rightPixels'] as int,
      topPixels: map['topPixels'] == null ? null : map['topPixels'] as int,
    );
  }
}
