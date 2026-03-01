// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securityinsights_get_workspace_manager_group_args_doc}
/// Arguments for getWorkspaceManagerGroup.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_get_workspace_manager_group_args_doc}
class GetWorkspaceManagerGroupArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace manager group
  final pulumi.Input<String> workspaceManagerGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceManagerGroupArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceManagerGroupName] The name of the workspace manager group
  /// [workspaceName] The name of the workspace.
  GetWorkspaceManagerGroupArgs({
    required String resourceGroupName,
    required String workspaceManagerGroupName,
    required String workspaceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceManagerGroupName = pulumi.Input.asInput<String>(workspaceManagerGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceManagerGroupName': workspaceManagerGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspaceManagerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceManagerGroupArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceManagerGroupName: map['workspaceManagerGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

