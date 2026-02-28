// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTag.
class GetTagArtifactregistryV1beta1Result {
  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  final String name;

  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  final String version;

  /// Creates a new [GetTagArtifactregistryV1beta1Result].
  /// [name] The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  /// [version] The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  GetTagArtifactregistryV1beta1Result({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory GetTagArtifactregistryV1beta1Result.fromMap(
      Map<String, dynamic> map) {
    return GetTagArtifactregistryV1beta1Result(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
