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
    required this.registryName,
    required this.resourceGroupName,
    required this.scopeMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'scopeMapName': scopeMapName,
    };
  }

  factory GetScopeMapArgs.fromMap(Map<String, dynamic> map) {
    return GetScopeMapArgs(
      registryName: (map['registryName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scopeMapName: (map['scopeMapName'] as String).input(),
    );
  }
}

