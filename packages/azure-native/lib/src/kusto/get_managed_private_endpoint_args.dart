// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kusto_get_managed_private_endpoint_args_doc}
/// Arguments for getManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_kusto_get_managed_private_endpoint_args_doc}
class GetManagedPrivateEndpointArgs {
  /// The name of the Kusto cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the managed private endpoint.
  final pulumi.Input<String> managedPrivateEndpointName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedPrivateEndpointArgs].
  /// [clusterName] The name of the Kusto cluster.
  /// [managedPrivateEndpointName] The name of the managed private endpoint.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetManagedPrivateEndpointArgs({
    required String clusterName,
    required String managedPrivateEndpointName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      managedPrivateEndpointName = pulumi.Input.asInput<String>(managedPrivateEndpointName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'managedPrivateEndpointName': managedPrivateEndpointName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrivateEndpointArgs(
      clusterName: map['clusterName'] as String,
      managedPrivateEndpointName: map['managedPrivateEndpointName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

