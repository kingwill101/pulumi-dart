// ignore_for_file: unused_element, unnecessary_cast

class GetImagesImageId {
  /// The sha256 digest of the image manifest.
  final String imageDigest;

  /// The tag associated with the image.
  final String imageTag;

  /// Creates a new [GetImagesImageId].
  /// [imageDigest] The sha256 digest of the image manifest.
  /// [imageTag] The tag associated with the image.
  GetImagesImageId({
    required this.imageDigest,
    required this.imageTag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageDigest'] = imageDigest;
    map['imageTag'] = imageTag;
    return map;
  }

  factory GetImagesImageId.fromMap(Map<String, dynamic> map) {
    return GetImagesImageId(
      imageDigest: map['imageDigest'] as String,
      imageTag: map['imageTag'] as String,
    );
  }
}
