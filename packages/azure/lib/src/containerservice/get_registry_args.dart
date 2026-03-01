// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_registry_get_registry_args_doc}
/// Arguments for getRegistry.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_registry_get_registry_args_doc}
class GetRegistryArgs {
  /// The name of the Container Registry.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where this Container Registry exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryArgs].
  /// [name] The name of the Container Registry.
  /// [resourceGroupName] The Name of the Resource Group where this Container Registry exists.
  GetRegistryArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

