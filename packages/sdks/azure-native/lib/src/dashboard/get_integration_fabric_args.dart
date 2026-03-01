// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_get_integration_fabric_args_doc}
/// Arguments for getIntegrationFabric.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_integration_fabric_args_doc}
class GetIntegrationFabricArgs {
  /// The integration fabric name of Azure Managed Grafana.
  final pulumi.Input<String> integrationFabricName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetIntegrationFabricArgs].
  /// [integrationFabricName] The integration fabric name of Azure Managed Grafana.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  GetIntegrationFabricArgs({
    required pulumi.Output<String> integrationFabricName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      integrationFabricName = pulumi.Input.asInput<String>(integrationFabricName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationFabricName': integrationFabricName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetIntegrationFabricArgs.fromMap(Map<String, dynamic> map) {
    return GetIntegrationFabricArgs(
      integrationFabricName: pulumi.Output.create<String>(map['integrationFabricName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

