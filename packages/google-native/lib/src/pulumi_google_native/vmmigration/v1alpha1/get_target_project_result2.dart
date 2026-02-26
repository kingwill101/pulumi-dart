// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTargetProject.
class GetTargetProjectResult2 {
  /// The time this target project resource was created (not related to when the Compute Engine project it points to was created).
  final String createTime;

  /// The target project's description.
  final String description;

  /// The name of the target project.
  final String name;

  /// The target project ID (number) or project name.
  final String project;

  /// The last time the target project resource was updated.
  final String updateTime;

  GetTargetProjectResult2({
    required this.createTime,
    required this.description,
    required this.name,
    required this.project,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['project'] = project;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetTargetProjectResult2.fromMap(Map<String, dynamic> map) {
    return GetTargetProjectResult2(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
