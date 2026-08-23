// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImageId {
  /// The sha256 digest of the image manifest.
  final pulumi.Input<String> imageDigest;
  /// The tag associated with the image.
  final pulumi.Input<String> imageTag;

  /// Creates a new [GetImagesImageId].
  /// [imageDigest] The sha256 digest of the image manifest.
  /// [imageTag] The tag associated with the image.
  const GetImagesImageId({
    required this.imageDigest,
    required this.imageTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDigest': imageDigest,
      'imageTag': imageTag,
    };
  }

  factory GetImagesImageId.fromMap(Map<String, dynamic> map) {
    return GetImagesImageId(
      imageDigest: pulumi.Input.fromValue(map['imageDigest'] as String),
      imageTag: pulumi.Input.fromValue(map['imageTag'] as String),
    );
  }
}
