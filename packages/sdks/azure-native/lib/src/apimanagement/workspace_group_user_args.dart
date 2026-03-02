// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_group_user_args_doc}
/// The set of arguments for WorkspaceGroupUser.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_group_user_args_doc}
class WorkspaceGroupUserArgs {
  /// Group identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> groupId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// User identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? userId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceGroupUserArgs].
  /// [groupId] Group identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [userId] User identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceGroupUserArgs({
    required this.groupId,
    required this.resourceGroupName,
    required this.serviceName,
    this.userId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'userId': ?userId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceGroupUserArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceGroupUserArgs(
      groupId: (map['groupId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId']! as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

