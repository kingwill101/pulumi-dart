// ignore_for_file: unused_element, unnecessary_cast

class GetProjectProject {
  /// Creation time in RFC3339 UTC "Zulu" format.
  final String createTime;

  /// A set of key/value label pairs assigned on a project.
  final Map<String, String> labels;

  /// The Project lifecycle state.
  final String lifecycleState;

  /// The optional user-assigned display name of the project.
  final String name;

  /// The numeric identifier of the project.
  final String number;

  /// An optional reference to a parent resource.
  final Map<String, String> parent;

  /// The project id of the project.
  final String projectId;

  GetProjectProject({
    required this.createTime,
    required this.labels,
    required this.lifecycleState,
    required this.name,
    required this.number,
    required this.parent,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['labels'] = labels;
    map['lifecycleState'] = lifecycleState;
    map['name'] = name;
    map['number'] = number;
    map['parent'] = parent;
    map['projectId'] = projectId;
    return map;
  }

  factory GetProjectProject.fromMap(Map<String, dynamic> map) {
    return GetProjectProject(
      createTime: map['createTime'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
      number: map['number'] as String,
      parent: (map['parent'] as Map).cast<String, String>(),
      projectId: map['projectId'] as String,
    );
  }
}
