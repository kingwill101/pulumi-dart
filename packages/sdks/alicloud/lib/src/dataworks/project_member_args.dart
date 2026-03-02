// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_member_role.dart';

/// {@template pulumi_dataworks_project_member_project_member_args_doc}
/// The set of arguments for ProjectMember.
/// {@endtemplate}
/// {@macro pulumi_dataworks_project_member_project_member_args_doc}
class ProjectMemberArgs {
  /// Project ID
  final pulumi.Input<int> projectId;
  /// List of roles owned by members. See `roles` below.
  final pulumi.Input<List<ProjectMemberRole>>? roles;
  /// The user ID of the member.
  final pulumi.Input<String> userId;

  /// Creates a new [ProjectMemberArgs].
  /// [projectId] Project ID
  /// [roles] List of roles owned by members. See `roles` below.
  /// [userId] The user ID of the member.
  ProjectMemberArgs({
    required this.projectId,
    this.roles,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<ProjectMemberRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<ProjectMemberRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': userId,
    };
  }

  factory ProjectMemberArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMemberArgs(
      projectId: (map['projectId'] as int).input(),
      roles: map['roles'] == null ? null : (pulumi.Input.decodeList<ProjectMemberRole>(map['roles']!, (value) => ProjectMemberRole.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userId: (map['userId'] as String).input(),
    );
  }
}

