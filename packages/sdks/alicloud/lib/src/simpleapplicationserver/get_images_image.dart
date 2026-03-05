// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImage {
  /// The description of the image.
  final pulumi.Input<String> description;
  /// The ID of the Instance Image.
  final pulumi.Input<String> id;
  /// The ID of the image.
  final pulumi.Input<String> imageId;
  /// The name of the resource.
  final pulumi.Input<String> imageName;
  /// The type of the image. Valid values: `app`, `custom`, `system`.
  final pulumi.Input<String> imageType;
  /// The platform of Plan supported.
  final pulumi.Input<String> platform;

  /// Creates a new [GetImagesImage].
  /// [description] The description of the image.
  /// [id] The ID of the Instance Image.
  /// [imageId] The ID of the image.
  /// [imageName] The name of the resource.
  /// [imageType] The type of the image. Valid values: `app`, `custom`, `system`.
  /// [platform] The platform of Plan supported.
  GetImagesImage({
    required this.description,
    required this.id,
    required this.imageId,
    required this.imageName,
    required this.imageType,
    required this.platform,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'imageId': imageId,
      'imageName': imageName,
      'imageType': imageType,
      'platform': platform,
    };
  }

  factory GetImagesImage.fromMap(Map<String, dynamic> map) {
    return GetImagesImage(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      imageType: pulumi.Input.fromValue(map['imageType'] as String),
      platform: pulumi.Input.fromValue(map['platform'] as String),
    );
  }
}

