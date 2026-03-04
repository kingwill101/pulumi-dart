// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetImagesImageId {
  /// Digest of the image manifest.
  final pulumi.Input<String>? imageDigest;

  /// Tag used for the image.
  final pulumi.Input<String>? imageTag;

  /// Creates a new [GetImagesImageId].
  /// [imageDigest] Digest of the image manifest.
  /// [imageTag] Tag used for the image.
  GetImagesImageId({this.imageDigest, this.imageTag});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageDigest': ?imageDigest,
      'imageTag': ?imageTag,
    };
  }

  factory GetImagesImageId.fromMap(Map<String, dynamic> map) {
    return GetImagesImageId(
      imageDigest: (() {
        final guardedValue = map['imageDigest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageTag: (() {
        final guardedValue = map['imageTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
