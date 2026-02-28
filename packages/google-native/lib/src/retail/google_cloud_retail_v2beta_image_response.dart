// ignore_for_file: unused_element, unnecessary_cast

/// Product image. Recommendations AI and Retail Search do not use product images to improve prediction and search results. However, product images can be returned in results, and are shown in prediction or search previews in the console.
class GoogleCloudRetailV2betaImageResponse {
  /// Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final int height;

  /// URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  final String uri;

  /// Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final int width;

  /// Creates a new [GoogleCloudRetailV2betaImageResponse].
  /// [height] Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [uri] URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  /// [width] Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  GoogleCloudRetailV2betaImageResponse({
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

  factory GoogleCloudRetailV2betaImageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaImageResponse(
      height: map['height'] as int,
      uri: map['uri'] as String,
      width: map['width'] as int,
    );
  }
}
