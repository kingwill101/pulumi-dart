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
    required pulumi.Output<String> groupId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    pulumi.Output<String>? userId,
    required pulumi.Output<String> workspaceId,
  }) :
      groupId = pulumi.Input.asInput<String>(groupId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      groupId: pulumi.Output.create<String>(map['groupId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

