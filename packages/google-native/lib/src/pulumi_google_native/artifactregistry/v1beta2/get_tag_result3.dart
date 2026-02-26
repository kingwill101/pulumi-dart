// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTag.
class GetTagResult3 {
  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  final String name;

  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  final String version;

  GetTagResult3({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory GetTagResult3.fromMap(Map<String, dynamic> map) {
    return GetTagResult3(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
