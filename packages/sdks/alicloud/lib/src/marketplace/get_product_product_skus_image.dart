// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProductProductSkusImage {
  /// The Ecs image id.
  final pulumi.Input<String> imageId;

  /// The Ecs image display name.
  final pulumi.Input<String> imageName;

  /// The Ecs image region.
  final pulumi.Input<String> regionId;

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
      imageId: pulumi.Input.fromValue(map['imageId'] as String),
      imageName: pulumi.Input.fromValue(map['imageName'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
    );
  }
}
