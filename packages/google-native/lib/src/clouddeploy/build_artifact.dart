// ignore_for_file: unused_element, unnecessary_cast

/// Description of an a image to use during Skaffold rendering.
class BuildArtifact {
  /// Image name in Skaffold configuration.
  final String? image;

  /// Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  final String? tag;

  /// Creates a new [BuildArtifact].
  /// [image] Image name in Skaffold configuration.
  /// [tag] Image tag to use. This will generally be the full path to an image, such as "gcr.io/my-project/busybox:1.2.3" or "gcr.io/my-project/busybox@sha256:abc123".
  BuildArtifact({
    this.image,
    this.tag,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    final tagValue = tag;
    if (tagValue != null) {
      map['tag'] = tagValue;
    }
    return map;
  }

  factory BuildArtifact.fromMap(Map<String, dynamic> map) {
    return BuildArtifact(
      image: map['image'] == null ? null : map['image'] as String,
      tag: map['tag'] == null ? null : map['tag'] as String,
    );
  }
}
