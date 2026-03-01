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
    pulumi.Output<String>? azureMonitorWorkspaceName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? publicNetworkAccess,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureMonitorWorkspaceName = pulumi.Input.asOptionalInput<String>(azureMonitorWorkspaceName),
      location = pulumi.Input.asOptionalInput<String>(location),
      publicNetworkAccess = pulumi.Input.asOptionalInput<String>(publicNetworkAccess),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      azureMonitorWorkspaceName: map['azureMonitorWorkspaceName'] == null ? null : pulumi.Output.create<String>(map['azureMonitorWorkspaceName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : pulumi.Output.create<String>(map['publicNetworkAccess'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

