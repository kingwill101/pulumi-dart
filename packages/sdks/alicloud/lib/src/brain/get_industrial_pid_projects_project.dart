// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIndustrialPidProjectsProject {
  /// The ID of the Pid Project.
  final pulumi.Input<String> id;

  /// The ID of Pid Organization.
  final pulumi.Input<String> pidOrganizationId;

  /// The description of Pid Project.
  final pulumi.Input<String> pidProjectDesc;

  /// The ID of Pid Project.
  final pulumi.Input<String> pidProjectId;

  /// The name of Pid Project.
  final pulumi.Input<String> pidProjectName;

  /// Creates a new [GetIndustrialPidProjectsProject].
  /// [id] The ID of the Pid Project.
  /// [pidOrganizationId] The ID of Pid Organization.
  /// [pidProjectDesc] The description of Pid Project.
  /// [pidProjectId] The ID of Pid Project.
  /// [pidProjectName] The name of Pid Project.
  GetIndustrialPidProjectsProject({
    required this.id,
    required this.pidOrganizationId,
    required this.pidProjectDesc,
    required this.pidProjectId,
    required this.pidProjectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pidOrganizationId': pidOrganizationId,
      'pidProjectDesc': pidProjectDesc,
      'pidProjectId': pidProjectId,
      'pidProjectName': pidProjectName,
    };
  }

  factory GetIndustrialPidProjectsProject.fromMap(Map<String, dynamic> map) {
    return GetIndustrialPidProjectsProject(
      id: pulumi.Input.fromValue(map['id'] as String),
      pidOrganizationId: pulumi.Input.fromValue(
        map['pidOrganizationId'] as String,
      ),
      pidProjectDesc: pulumi.Input.fromValue(map['pidProjectDesc'] as String),
      pidProjectId: pulumi.Input.fromValue(map['pidProjectId'] as String),
      pidProjectName: pulumi.Input.fromValue(map['pidProjectName'] as String),
    );
  }
}
