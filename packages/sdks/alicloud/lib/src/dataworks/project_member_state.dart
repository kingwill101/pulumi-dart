// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_member_role.dart';

/// Input properties used for looking up and filtering ProjectMember resources.
class ProjectMemberState {
  /// Project ID
  final pulumi.Input<int>? projectId;
  /// List of roles owned by members. See `roles` below.
  final pulumi.Input<List<ProjectMemberRole>>? roles;
  /// The status of the user in project
  final pulumi.Input<String>? status;
  /// The user ID of the member.
  final pulumi.Input<String>? userId;

  /// Creates a new [ProjectMemberState].
  /// [projectId] Project ID
  /// [roles] List of roles owned by members. See `roles` below.
  /// [status] The status of the user in project
  /// [userId] The user ID of the member.
  ProjectMemberState({
    this.projectId,
    this.roles,
    this.status,
    this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': ?projectId,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<ProjectMemberRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<ProjectMemberRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'userId': ?userId,
    };
  }

  factory ProjectMemberState.fromMap(Map<String, dynamic> map) {
    return ProjectMemberState(
      projectId: map['projectId'] == null ? null : (map['projectId'] as int).input(),
      roles: map['roles'] == null ? null : (pulumi.Input.decodeList<ProjectMemberRole>(map['roles'], (value) => ProjectMemberRole.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
    );
  }
}

