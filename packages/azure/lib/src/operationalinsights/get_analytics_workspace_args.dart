// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_get_analytics_workspace_get_analytics_workspace_args_doc}
/// Arguments for getAnalyticsWorkspace.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_get_analytics_workspace_get_analytics_workspace_args_doc}
class GetAnalyticsWorkspaceArgs {
  /// Specifies the name of the Log Analytics Workspace.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Log Analytics workspace is located in.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAnalyticsWorkspaceArgs].
  /// [name] Specifies the name of the Log Analytics Workspace.
  /// [resourceGroupName] The name of the resource group in which the Log Analytics workspace is located in.
  GetAnalyticsWorkspaceArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAnalyticsWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsWorkspaceArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

