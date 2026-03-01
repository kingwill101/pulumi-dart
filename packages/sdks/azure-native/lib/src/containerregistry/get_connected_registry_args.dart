// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_connected_registry_args_doc}
/// Arguments for getConnectedRegistry.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_connected_registry_args_doc}
class GetConnectedRegistryArgs {
  /// The name of the connected registry.
  final pulumi.Input<String> connectedRegistryName;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConnectedRegistryArgs].
  /// [connectedRegistryName] The name of the connected registry.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConnectedRegistryArgs({
    required pulumi.Output<String> connectedRegistryName,
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      connectedRegistryName = pulumi.Input.asInput<String>(connectedRegistryName),
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRegistryName': connectedRegistryName,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConnectedRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectedRegistryArgs(
      connectedRegistryName: pulumi.Output.create<String>(map['connectedRegistryName'] as String),
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

