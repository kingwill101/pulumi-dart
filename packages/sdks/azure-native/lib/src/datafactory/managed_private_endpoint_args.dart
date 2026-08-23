// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_private_endpoint_datafactory.dart';

/// {@template pulumi_datafactory_managed_private_endpoint_args_doc}
/// The set of arguments for ManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_datafactory_managed_private_endpoint_args_doc}
class ManagedPrivateEndpointArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// Managed private endpoint name
  final pulumi.Input<String>? managedPrivateEndpointName;
  /// Managed virtual network name
  final pulumi.Input<String> managedVirtualNetworkName;
  /// Managed private endpoint properties.
  final pulumi.Input<ManagedPrivateEndpointDatafactory> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [factoryName] The factory name.
  /// [managedPrivateEndpointName] Managed private endpoint name
  /// [managedVirtualNetworkName] Managed virtual network name
  /// [properties] Managed private endpoint properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ManagedPrivateEndpointArgs({
    required this.factoryName,
    this.managedPrivateEndpointName,
    required this.managedVirtualNetworkName,
    required this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'managedPrivateEndpointName': ?managedPrivateEndpointName,
      'managedVirtualNetworkName': managedVirtualNetworkName,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return ManagedPrivateEndpointArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      managedPrivateEndpointName: (() { final guardedValue = map['managedPrivateEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedVirtualNetworkName: pulumi.Input.fromValue(map['managedVirtualNetworkName'] as String),
      properties: pulumi.Input.fromValue(map['properties'] as ManagedPrivateEndpointDatafactory),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
