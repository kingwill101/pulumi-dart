// ignore_for_file: unused_element, unnecessary_cast

class GetVersionRelatedTag {
  /// The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  final String name;
  final String version;

  /// Creates a new [GetVersionRelatedTag].
  /// [name] The name of the version, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/version1`. If the package part contains slashes, the slashes are escaped.
  /// [version] Required.
  GetVersionRelatedTag({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory GetVersionRelatedTag.fromMap(Map<String, dynamic> map) {
    return GetVersionRelatedTag(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
