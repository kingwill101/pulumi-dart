// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPackage.
class GetPackageResult {
  /// Client specified annotations.
  final Map<String, String> annotations;

  /// The time, as a RFC 3339 string, this package was created.
  final String createTime;

  /// The display name of the package.
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String name;
  final String? project;
  final String repositoryId;

  /// The time, as a RFC 3339 string, this package was last updated. This includes publishing a new version of the package.
  final String updateTime;

  GetPackageResult({
    required this.annotations,
    required this.createTime,
    required this.displayName,
    required this.id,
    required this.location,
    required this.name,
    this.project,
    required this.repositoryId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['annotations'] = annotations;
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['id'] = id;
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['repositoryId'] = repositoryId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetPackageResult.fromMap(Map<String, dynamic> map) {
    return GetPackageResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      repositoryId: map['repositoryId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
