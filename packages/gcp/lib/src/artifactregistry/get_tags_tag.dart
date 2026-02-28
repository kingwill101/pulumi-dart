// ignore_for_file: unused_element, unnecessary_cast

class GetTagsTag {
  /// The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  final String name;

  /// The version of the tag.
  final String version;

  /// Creates a new [GetTagsTag].
  /// [name] The name of the tag, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1`. If the package part contains slashes, the slashes are escaped.
  /// [version] The version of the tag.
  GetTagsTag({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['version'] = version;
    return map;
  }

  factory GetTagsTag.fromMap(Map<String, dynamic> map) {
    return GetTagsTag(
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}
