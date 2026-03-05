// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitor_azure_monitor_workspace_args_doc}
/// The set of arguments for AzureMonitorWorkspace.
/// {@endtemplate}
/// {@macro pulumi_monitor_azure_monitor_workspace_args_doc}
class AzureMonitorWorkspaceArgs {
  /// The name of the Azure Monitor Workspace. The name is case insensitive
  final pulumi.Input<String>? azureMonitorWorkspaceName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Gets or sets allow or disallow public network access to Azure Monitor Workspace
  final pulumi.Input<String>? publicNetworkAccess;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AzureMonitorWorkspaceArgs].
  /// [azureMonitorWorkspaceName] The name of the Azure Monitor Workspace. The name is case insensitive
  /// [location] The geo-location where the resource lives
  /// [publicNetworkAccess] Gets or sets allow or disallow public network access to Azure Monitor Workspace
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  AzureMonitorWorkspaceArgs({
    this.azureMonitorWorkspaceName,
    this.location,
    this.publicNetworkAccess,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureMonitorWorkspaceName': ?azureMonitorWorkspaceName,
      'location': ?location,
      'publicNetworkAccess': ?publicNetworkAccess,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AzureMonitorWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return AzureMonitorWorkspaceArgs(
      azureMonitorWorkspaceName: (() { final guardedValue = map['azureMonitorWorkspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

