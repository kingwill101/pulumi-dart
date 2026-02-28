// ignore_for_file: unused_element, unnecessary_cast

/// Description of an a image to use during Skaffold rendering.
class BuildArtifactResponse {
  /// Image name in Skaffold configuration.
  final String image;

  /// Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  final String tag;

  /// Creates a new [BuildArtifactResponse].
  /// [image] Image name in Skaffold configuration.
  /// [tag] Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  BuildArtifactResponse({
    required this.image,
    required this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['image'] = image;
    map['tag'] = tag;
    return map;
  }

  factory BuildArtifactResponse.fromMap(Map<String, dynamic> map) {
    return BuildArtifactResponse(
      image: map['image'] as String,
      tag: map['tag'] as String,
    );
  }
}
