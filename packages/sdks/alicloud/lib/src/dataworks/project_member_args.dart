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
    required pulumi.Output<int> projectId,
    pulumi.Output<List<ProjectMemberRole>>? roles,
    required pulumi.Output<String> userId,
  }) :
      projectId = pulumi.Input.asInput<int>(projectId),
      roles = pulumi.Input.asOptionalInput<List<ProjectMemberRole>>(roles),
      userId = pulumi.Input.asInput<String>(userId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<ProjectMemberRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<ProjectMemberRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userId': userId,
    };
  }

  factory ProjectMemberArgs.fromMap(Map<String, dynamic> map) {
    return ProjectMemberArgs(
      projectId: pulumi.Output.create<int>(map['projectId'] as int),
      roles: map['roles'] == null ? null : pulumi.Output.create<List<ProjectMemberRole>>(pulumi.Input.decodeList<ProjectMemberRole>(map['roles'], (value) => ProjectMemberRole.fromMap((value as Map).cast<String, dynamic>()))),
      userId: pulumi.Output.create<String>(map['userId'] as String),
    );
  }
}

