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
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProjectMemberRole>(guardedValue, (value) => ProjectMemberRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userId: (() { final guardedValue = map['userId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

