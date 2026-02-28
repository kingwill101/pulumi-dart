// ignore_for_file: unused_element, unnecessary_cast

/// The color information of a Product.
class GoogleCloudRetailV2betaColorInfoResponse {
  /// The standard color families. Strongly recommended to use the following standard color groups: "Red", "Pink", "Orange", "Yellow", "Purple", "Green", "Cyan", "Blue", "Brown", "White", "Gray", "Black" and "Mixed". Normally it is expected to have only 1 color family. May consider using single "Mixed" instead of multiple values. A maximum of 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [color](https://support.google.com/merchants/answer/6324487). Schema.org property [Product.color](https://schema.org/color).
  final List<String> colorFamilies;

  /// The color display names, which may be different from standard color family names, such as the color aliases used in the website frontend. Normally it is expected to have only 1 color. May consider using single "Mixed" instead of multiple values. A maximum of 75 colors are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [color](https://support.google.com/merchants/answer/6324487). Schema.org property [Product.color](https://schema.org/color).
  final List<String> colors;

  /// Creates a new [GoogleCloudRetailV2betaColorInfoResponse].
  /// [colorFamilies] The standard color families. Strongly recommended to use the following standard color groups: "Red", "Pink", "Orange", "Yellow", "Purple", "Green", "Cyan", "Blue", "Brown", "White", "Gray", "Black" and "Mixed". Normally it is expected to have only 1 color family. May consider using single "Mixed" instead of multiple values. A maximum of 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [color](https://support.google.com/merchants/answer/6324487). Schema.org property [Product.color](https://schema.org/color).
  /// [colors] The color display names, which may be different from standard color family names, such as the color aliases used in the website frontend. Normally it is expected to have only 1 color. May consider using single "Mixed" instead of multiple values. A maximum of 75 colors are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [color](https://support.google.com/merchants/answer/6324487). Schema.org property [Product.color](https://schema.org/color).
  GoogleCloudRetailV2betaColorInfoResponse({
    required this.colorFamilies,
    required this.colors,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['colorFamilies'] = colorFamilies;
    map['colors'] = colors;
    return map;
  }

  factory GoogleCloudRetailV2betaColorInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaColorInfoResponse(
      colorFamilies: (map['colorFamilies'] as List).cast<String>(),
      colors: (map['colors'] as List).cast<String>(),
    );
  }
}
