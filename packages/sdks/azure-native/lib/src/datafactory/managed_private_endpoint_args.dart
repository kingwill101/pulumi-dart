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
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ManagedPrivateEndpointArgs].
  /// [factoryName] The factory name.
  /// [managedPrivateEndpointName] Managed private endpoint name
  /// [managedVirtualNetworkName] Managed virtual network name
  /// [properties] Managed private endpoint properties.
  /// [resourceGroupName] The resource group name.
  ManagedPrivateEndpointArgs({
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
      factoryName: (map['factoryName'] as String).input(),
      managedPrivateEndpointName: map['managedPrivateEndpointName'] == null ? null : (map['managedPrivateEndpointName'] as String).input(),
      managedVirtualNetworkName: (map['managedVirtualNetworkName'] as String).input(),
      properties: (map['properties'] as ManagedPrivateEndpointDatafactory).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

