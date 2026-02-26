// ignore_for_file: unused_element, unnecessary_cast

/// Pad filter configuration for the input video. The padded input video is scaled after padding with black to match the output resolution.
class PadResponse {
  /// The number of pixels to add to the bottom. The default is 0.
  final int bottomPixels;

  /// The number of pixels to add to the left. The default is 0.
  final int leftPixels;

  /// The number of pixels to add to the right. The default is 0.
  final int rightPixels;

  /// The number of pixels to add to the top. The default is 0.
  final int topPixels;

  PadResponse({
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

  factory PadResponse.fromMap(Map<String, dynamic> map) {
    return PadResponse(
      bottomPixels: map['bottomPixels'] as int,
      leftPixels: map['leftPixels'] as int,
      rightPixels: map['rightPixels'] as int,
      topPixels: map['topPixels'] as int,
    );
  }
}
