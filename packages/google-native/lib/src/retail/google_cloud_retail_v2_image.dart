// ignore_for_file: unused_element, unnecessary_cast

/// Product image. Recommendations AI and Retail Search do not use product images to improve prediction and search results. However, product images can be returned in results, and are shown in prediction or search previews in the console.
class GoogleCloudRetailV2Image {
  /// Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final int? height;

  /// URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  final String uri;

  /// Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  final int? width;

  /// Creates a new [GoogleCloudRetailV2Image].
  /// [height] Height of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [uri] URI of the image. This field must be a valid UTF-8 encoded URI with a length limit of 5,000 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [image_link](https://support.google.com/merchants/answer/6324350). Schema.org property [Product.image](https://schema.org/image).
  /// [width] Width of the image in number of pixels. This field must be nonnegative. Otherwise, an INVALID_ARGUMENT error is returned.
  GoogleCloudRetailV2Image({
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

  factory GoogleCloudRetailV2Image.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2Image(
      height: map['height'] == null ? null : map['height'] as int,
      uri: map['uri'] as String,
      width: map['width'] == null ? null : map['width'] as int,
    );
  }
}
