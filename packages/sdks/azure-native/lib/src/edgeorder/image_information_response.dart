// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image for the product.
class ImageInformationResponse {
  /// Type of the image.
  final pulumi.Input<String> imageType;
  /// Url of the image.
  final pulumi.Input<String> imageUrl;

  /// Creates a new [ImageInformationResponse].
  /// [imageType] Type of the image.
  /// [imageUrl] Url of the image.
  const ImageInformationResponse({
    required this.imageType,
    required this.imageUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageType': imageType,
      'imageUrl': imageUrl,
    };
  }

  factory ImageInformationResponse.fromMap(Map<String, dynamic> map) {
    return ImageInformationResponse(
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      imageUrl: pulumi.Input.fromValue(map['imageUrl'] as String),
    );
  }
}

