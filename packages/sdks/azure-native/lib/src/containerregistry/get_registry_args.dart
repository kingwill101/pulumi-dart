// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_registry_args_doc}
/// Arguments for getRegistry.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_registry_args_doc}
class GetRegistryArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRegistryArgs({
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryArgs(
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

