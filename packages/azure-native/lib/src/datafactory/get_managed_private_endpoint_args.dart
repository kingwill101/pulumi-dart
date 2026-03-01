// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_managed_private_endpoint_args_doc}
/// Arguments for getManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_managed_private_endpoint_args_doc}
class GetManagedPrivateEndpointArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Managed private endpoint name
  final pulumi.Input<String> managedPrivateEndpointName;
  /// Managed virtual network name
  final pulumi.Input<String> managedVirtualNetworkName;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetManagedPrivateEndpointArgs].
  /// [factoryName] The factory name.
  /// [managedPrivateEndpointName] Managed private endpoint name
  /// [managedVirtualNetworkName] Managed virtual network name
  /// [resourceGroupName] The resource group name.
  GetManagedPrivateEndpointArgs({
    required String factoryName,
    required String managedPrivateEndpointName,
    required String managedVirtualNetworkName,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      managedPrivateEndpointName = pulumi.Input.asInput<String>(managedPrivateEndpointName),
      managedVirtualNetworkName = pulumi.Input.asInput<String>(managedVirtualNetworkName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'managedPrivateEndpointName': managedPrivateEndpointName,
      'managedVirtualNetworkName': managedVirtualNetworkName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedPrivateEndpointArgs(
      factoryName: map['factoryName'] as String,
      managedPrivateEndpointName: map['managedPrivateEndpointName'] as String,
      managedVirtualNetworkName: map['managedVirtualNetworkName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

