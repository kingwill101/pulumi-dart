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
    required String factoryName,
    String? managedPrivateEndpointName,
    required String managedVirtualNetworkName,
    required ManagedPrivateEndpointDatafactory properties,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      managedPrivateEndpointName = pulumi.Input.asOptionalInput<String>(managedPrivateEndpointName),
      managedVirtualNetworkName = pulumi.Input.asInput<String>(managedVirtualNetworkName),
      properties = pulumi.Input.asInput<ManagedPrivateEndpointDatafactory>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      factoryName: map['factoryName'] as String,
      managedPrivateEndpointName: map['managedPrivateEndpointName'] == null ? null : map['managedPrivateEndpointName'] as String,
      managedVirtualNetworkName: map['managedVirtualNetworkName'] as String,
      properties: map['properties'] as ManagedPrivateEndpointDatafactory,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

