// ignore_for_file: unused_element, unnecessary_cast


class GetImagesImage {
  /// The description of the image.
  final String description;
  /// The ID of the Instance Image.
  final String id;
  /// The ID of the image.
  final String imageId;
  /// The name of the resource.
  final String imageName;
  /// The type of the image. Valid values: `app`, `custom`, `system`.
  final String imageType;
  /// The platform of Plan supported.
  final String platform;

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
      description: map['description'] as String,
      id: map['id'] as String,
      imageId: map['imageId'] as String,
      imageName: map['imageName'] as String,
      imageType: map['imageType'] as String,
      platform: map['platform'] as String,
    );
  }
}

