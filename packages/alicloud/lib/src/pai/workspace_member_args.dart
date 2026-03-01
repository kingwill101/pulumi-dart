// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_workspace_member_workspace_member_args_doc}
/// The set of arguments for WorkspaceMember.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_member_workspace_member_args_doc}
class WorkspaceMemberArgs {
  /// The list of roles. see [how to use it](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmember).
  final pulumi.Input<List<String>> roles;
  /// The ID of the User.
  final pulumi.Input<String> userId;
  /// The ID of the Workspace.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceMemberArgs].
  /// [roles] The list of roles. see [how to use it](https://www.alibabacloud.com/help/en/pai/developer-reference/api-aiworkspace-2021-02-04-createmember).
  /// [userId] The ID of the User.
  /// [workspaceId] The ID of the Workspace.
  WorkspaceMemberArgs({
    required List<String> roles,
    required String userId,
    required String workspaceId,
  }) :
      roles = pulumi.Input.asInput<List<String>>(roles),
      userId = pulumi.Input.asInput<String>(userId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': roles,
      'userId': userId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceMemberArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceMemberArgs(
      roles: (map['roles'] as List).cast<String>(),
      userId: map['userId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

