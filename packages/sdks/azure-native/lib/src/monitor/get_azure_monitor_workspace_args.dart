// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_get_azure_monitor_workspace_args_doc}
/// Arguments for getAzureMonitorWorkspace.
/// {@endtemplate}
/// {@macro pulumi_monitor_get_azure_monitor_workspace_args_doc}
class GetAzureMonitorWorkspaceArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String> azureMonitorWorkspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAzureMonitorWorkspaceArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAzureMonitorWorkspaceArgs({
    required this.azureMonitorWorkspaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': azureMonitorWorkspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAzureMonitorWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAzureMonitorWorkspaceArgs(
      azureMonitorWorkspaceName: pulumi.Input.fromValue(map['azureMonitorWorkspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

