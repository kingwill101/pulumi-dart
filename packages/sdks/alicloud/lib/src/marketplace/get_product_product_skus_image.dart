// ignore_for_file: unused_element, unnecessary_cast


class GetProductProductSkusImage {
  /// The Ecs image id.
  final String imageId;
  /// The Ecs image display name.
  final String imageName;
  /// The Ecs image region.
  final String regionId;

  /// Creates a new [GetProductProductSkusImage].
  /// [imageId] The Ecs image id.
  /// [imageName] The Ecs image display name.
  /// [regionId] The Ecs image region.
  GetProductProductSkusImage({
    required this.imageId,
    required this.imageName,
    required this.regionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageId': imageId,
      'imageName': imageName,
      'regionId': regionId,
    };
  }

  factory GetProductProductSkusImage.fromMap(Map<String, dynamic> map) {
    return GetProductProductSkusImage(
      imageId: map['imageId'] as String,
      imageName: map['imageName'] as String,
      regionId: map['regionId'] as String,
    );
  }
}

