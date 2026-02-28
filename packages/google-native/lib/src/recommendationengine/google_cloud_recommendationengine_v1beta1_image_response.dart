// ignore_for_file: unused_element, unnecessary_cast


/// Catalog item thumbnail/detail image.
class GoogleCloudRecommendationengineV1beta1ImageResponse {
  /// Optional. Height of the image in number of pixels.
  final int height;
  /// URL of the image with a length limit of 5 KiB.
  final String uri;
  /// Optional. Width of the image in number of pixels.
  final int width;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1ImageResponse].
  /// [height] Optional. Height of the image in number of pixels.
  /// [uri] URL of the image with a length limit of 5 KiB.
  /// [width] Optional. Width of the image in number of pixels.
  GoogleCloudRecommendationengineV1beta1ImageResponse({
    required this.height,
    required this.uri,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'height': height,
      'uri': uri,
      'width': width,
    };
  }

  factory GoogleCloudRecommendationengineV1beta1ImageResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ImageResponse(
      height: map['height'] as int,
      uri: map['uri'] as String,
      width: map['width'] as int,
    );
  }
}

