// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkspaceMember resources.
class WorkspaceMemberState {
  /// The time when the workspace is created, in UTC. The time follows the ISO 8601 standard.
  final pulumi.Input<String>? createTime;
  /// The member ID.
  final pulumi.Input<String>? memberId;
  /// The list of roles. see [how to use it](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmember).
  final pulumi.Input<List<String>>? roles;
  /// The ID of the User.
  final pulumi.Input<String>? userId;
  /// The ID of the Workspace.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [WorkspaceMemberState].
  /// [createTime] The time when the workspace is created, in UTC. The time follows the ISO 8601 standard.
  /// [memberId] The member ID.
  /// [roles] The list of roles. see [how to use it](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmember).
  /// [userId] The ID of the User.
  /// [workspaceId] The ID of the Workspace.
  WorkspaceMemberState({
    this.createTime,
    this.memberId,
    this.roles,
    this.userId,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'memberId': ?memberId,
      'roles': ?roles,
      'userId': ?userId,
      'workspaceId': ?workspaceId,
    };
  }

  factory WorkspaceMemberState.fromMap(Map<String, dynamic> map) {
    return WorkspaceMemberState(
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      memberId: map['memberId'] == null ? null : (map['memberId'] as String).input(),
      roles: map['roles'] == null ? null : ((map['roles'] as List).cast<String>()).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
    );
  }
}

