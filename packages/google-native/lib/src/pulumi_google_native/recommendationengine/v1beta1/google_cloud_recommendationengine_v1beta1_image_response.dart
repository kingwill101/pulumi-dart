// ignore_for_file: unused_element, unnecessary_cast

/// Catalog item thumbnail/detail image.
class GoogleCloudRecommendationengineV1beta1ImageResponse {
  /// Optional. Height of the image in number of pixels.
  final int height;

  /// URL of the image with a length limit of 5 KiB.
  final String uri;

  /// Optional. Width of the image in number of pixels.
  final int width;

  GoogleCloudRecommendationengineV1beta1ImageResponse({
    required this.height,
    required this.uri,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['uri'] = uri;
    map['width'] = width;
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1ImageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ImageResponse(
      height: map['height'] as int,
      uri: map['uri'] as String,
      width: map['width'] as int,
    );
  }
}
