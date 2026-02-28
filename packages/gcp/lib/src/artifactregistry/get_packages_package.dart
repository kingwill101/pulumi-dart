// ignore_for_file: unused_element, unnecessary_cast

class GetPackagesPackage {
  /// Client specified annotations.
  final Map<String, String> annotations;

  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// The display name of the package.
  final String displayName;

  /// The name of the package, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1`. If the package ID part contains slashes, the slashes are escaped.
  final String name;

  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final String updateTime;

  /// Creates a new [GetPackagesPackage].
  /// [annotations] Client specified annotations.
  /// [createTime] The time, as a RFC 3339 string, this package was created.
  /// [displayName] The display name of the package.
  /// [name] The name of the package, for example: `projects/p1/locations/us-central1/repositories/repo1/packages/pkg1`. If the package ID part contains slashes, the slashes are escaped.
  /// [updateTime] The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  GetPackagesPackage({
    required this.annotations,
    required this.createTime,
    required this.displayName,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['name'] = name;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPackagesPackage.fromMap(Map<String, dynamic> map) {
    return GetPackagesPackage(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
