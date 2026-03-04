// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetProjectsProject {
  /// The description of the project.
  final pulumi.Input<String> description;

  /// The ID of the project.
  final pulumi.Input<String> id;

  /// The last modify time of project.
  final pulumi.Input<String> lastModifyTime;

  /// The owner of project.
  final pulumi.Input<String> owner;

  /// The policy of project.
  final pulumi.Input<String> policy;

  /// The name of the project.
  final pulumi.Input<String> projectName;

  /// The region of project.
  final pulumi.Input<String> region;

  /// The status of project.
  final pulumi.Input<String> status;

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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifyTime: pulumi.Input.fromValue(map['lastModifyTime'] as String),
      owner: pulumi.Input.fromValue(map['owner'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
