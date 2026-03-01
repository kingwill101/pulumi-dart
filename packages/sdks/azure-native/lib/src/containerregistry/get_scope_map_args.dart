// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_scope_map_args_doc}
/// Arguments for getScopeMap.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_scope_map_args_doc}
class GetScopeMapArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scope map.
  final pulumi.Input<String> scopeMapName;

  /// Creates a new [GetScopeMapArgs].
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeMapName] The name of the scope map.
  GetScopeMapArgs({
    required pulumi.Output<String> registryName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> scopeMapName,
  }) :
      registryName = pulumi.Input.asInput<String>(registryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeMapName = pulumi.Input.asInput<String>(scopeMapName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'scopeMapName': scopeMapName,
    };
  }

  factory GetScopeMapArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeMapArgs(
      registryName: pulumi.Output.create<String>(map['registryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopeMapName: pulumi.Output.create<String>(map['scopeMapName'] as String),
    );
  }
}

