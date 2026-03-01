// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_get_managed_private_endpoint_args_doc}
/// Arguments for getManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dashboard_get_managed_private_endpoint_args_doc}
class GetManagedPrivateEndpointArgs {
  /// The managed private endpoint name of Azure Managed Grafana.
  final pulumi.Input<String> managedPrivateEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The workspace name of Azure Managed Grafana.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetManagedPrivateEndpointArgs].
  /// [managedPrivateEndpointName] The managed private endpoint name of Azure Managed Grafana.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The workspace name of Azure Managed Grafana.
  GetManagedPrivateEndpointArgs({
    required pulumi.Output<String> managedPrivateEndpointName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      managedPrivateEndpointName = pulumi.Input.asInput<String>(managedPrivateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedPrivateEndpointName': managedPrivateEndpointName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrivateEndpointArgs(
      managedPrivateEndpointName: pulumi.Output.create<String>(map['managedPrivateEndpointName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

