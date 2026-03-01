// ignore_for_file: unused_element, unnecessary_cast


class GetProjectsProject {
  /// The description of the project.
  final String description;
  /// The ID of the project.
  final String id;
  /// The last modify time of project.
  final String lastModifyTime;
  /// The owner of project.
  final String owner;
  /// The policy of project.
  final String policy;
  /// The name of the project.
  final String projectName;
  /// The region of project.
  final String region;
  /// The status of project.
  final String status;

  /// Creates a new [GetProjectsProject].
  /// [description] The description of the project.
  /// [id] The ID of the project.
  /// [lastModifyTime] The last modify time of project.
  /// [owner] The owner of project.
  /// [policy] The policy of project.
  /// [projectName] The name of the project.
  /// [region] The region of project.
  /// [status] The status of project.
  GetProjectsProject({
    required this.description,
    required this.id,
    required this.lastModifyTime,
    required this.owner,
    required this.policy,
    required this.projectName,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'lastModifyTime': lastModifyTime,
      'owner': owner,
      'policy': policy,
      'projectName': projectName,
      'region': region,
      'status': status,
    };
  }

  factory GetProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetProjectsProject(
      description: map['description'] as String,
      id: map['id'] as String,
      lastModifyTime: map['lastModifyTime'] as String,
      owner: map['owner'] as String,
      policy: map['policy'] as String,
      projectName: map['projectName'] as String,
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}

