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

  /// Creates a new [GetProjectProject].
  /// [createTime] Creation time in RFC3339 UTC "Zulu" format.
  /// [labels] A set of key/value label pairs assigned on a project.
  /// [lifecycleState] The Project lifecycle state.
  /// [name] The optional user-assigned display name of the project.
  /// [number] The numeric identifier of the project.
  /// [parent] An optional reference to a parent resource.
  /// [projectId] The project id of the project.
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
    return <String, dynamic>{
      'createTime': createTime,
      'labels': labels,
      'lifecycleState': lifecycleState,
      'name': name,
      'number': number,
      'parent': parent,
      'projectId': projectId,
    };
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
