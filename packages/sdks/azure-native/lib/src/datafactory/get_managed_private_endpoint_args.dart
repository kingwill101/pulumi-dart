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
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> managedPrivateEndpointName,
    required pulumi.Output<String> managedVirtualNetworkName,
    required pulumi.Output<String> resourceGroupName,
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
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      managedPrivateEndpointName: pulumi.Output.create<String>(map['managedPrivateEndpointName'] as String),
      managedVirtualNetworkName: pulumi.Output.create<String>(map['managedVirtualNetworkName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

