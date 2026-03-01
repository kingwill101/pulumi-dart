// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_get_registry_scope_map_get_registry_scope_map_args_doc}
/// Arguments for getRegistryScopeMap.
/// {@endtemplate}
/// {@macro pulumi_containerservice_get_registry_scope_map_get_registry_scope_map_args_doc}
class GetRegistryScopeMapArgs {
  /// The Name of the Container Registry where the token exists.
  final pulumi.Input<String> containerRegistryName;
  /// The name of the Container Registry token.
  final pulumi.Input<String> name;
  /// The Name of the Resource Group where this Container Registry token exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRegistryScopeMapArgs].
  /// [containerRegistryName] The Name of the Container Registry where the token exists.
  /// [name] The name of the Container Registry token.
  /// [resourceGroupName] The Name of the Resource Group where this Container Registry token exists.
  GetRegistryScopeMapArgs({
    required String containerRegistryName,
    required String name,
    required String resourceGroupName,
  }) :
      containerRegistryName = pulumi.Input.asInput<String>(containerRegistryName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': containerRegistryName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRegistryScopeMapArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistryScopeMapArgs(
      containerRegistryName: map['containerRegistryName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

