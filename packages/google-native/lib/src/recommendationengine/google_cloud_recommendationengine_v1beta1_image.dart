// ignore_for_file: unused_element, unnecessary_cast

/// Catalog item thumbnail/detail image.
class GoogleCloudRecommendationengineV1beta1Image {
  /// Optional. Height of the image in number of pixels.
  final int? height;

  /// URL of the image with a length limit of 5 KiB.
  final String uri;

  /// Optional. Width of the image in number of pixels.
  final int? width;

  /// Creates a new [GoogleCloudRecommendationengineV1beta1Image].
  /// [height] Optional. Height of the image in number of pixels.
  /// [uri] URL of the image with a length limit of 5 KiB.
  /// [width] Optional. Width of the image in number of pixels.
  GoogleCloudRecommendationengineV1beta1Image({
    this.height,
    required this.uri,
    this.width,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final heightValue = height;
    if (heightValue != null) {
      map['height'] = heightValue;
    }
    map['uri'] = uri;
    final widthValue = width;
    if (widthValue != null) {
      map['width'] = widthValue;
    }
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1Image.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1Image(
      height: map['height'] == null ? null : map['height'] as int,
      uri: map['uri'] as String,
      width: map['width'] == null ? null : map['width'] as int,
    );
  }
}
