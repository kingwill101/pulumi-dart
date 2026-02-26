// ignore_for_file: unused_element, unnecessary_cast

/// Video cropping configuration for the input video. The cropped input video is scaled to match the output resolution.
class CropResponse {
  /// The number of pixels to crop from the bottom. The default is 0.
  final int bottomPixels;

  /// The number of pixels to crop from the left. The default is 0.
  final int leftPixels;

  /// The number of pixels to crop from the right. The default is 0.
  final int rightPixels;

  /// The number of pixels to crop from the top. The default is 0.
  final int topPixels;

  CropResponse({
    required this.bottomPixels,
    required this.leftPixels,
    required this.rightPixels,
    required this.topPixels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bottomPixels'] = bottomPixels;
    map['leftPixels'] = leftPixels;
    map['rightPixels'] = rightPixels;
    map['topPixels'] = topPixels;
    return map;
  }

  factory CropResponse.fromMap(Map<String, dynamic> map) {
    return CropResponse(
      bottomPixels: map['bottomPixels'] as int,
      leftPixels: map['leftPixels'] as int,
      rightPixels: map['rightPixels'] as int,
      topPixels: map['topPixels'] as int,
    );
  }
}
