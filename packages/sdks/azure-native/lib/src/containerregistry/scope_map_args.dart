// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_scope_map_args_doc}
/// The set of arguments for ScopeMap.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_scope_map_args_doc}
class ScopeMapArgs {
  /// The list of scoped permissions for registry artifacts.
  /// E.g. repositories/repository-name/content/read,
  /// repositories/repository-name/metadata/write
  final pulumi.Input<List<String>> actions;
  /// The user friendly description of the scope map.
  final pulumi.Input<String>? description;
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the scope map.
  final pulumi.Input<String>? scopeMapName;

  /// Creates a new [ScopeMapArgs].
  /// [actions] The list of scoped permissions for registry artifacts.
  /// [description] The user friendly description of the scope map.
  /// [registryName] The name of the container registry.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scopeMapName] The name of the scope map.
  const ScopeMapArgs({
    required this.actions,
    this.description,
    required this.registryName,
    required this.resourceGroupName,
    this.scopeMapName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'description': ?description,
      'registryName': registryName,
      'resourceGroupName': resourceGroupName,
      'scopeMapName': ?scopeMapName,
    };
  }

  factory ScopeMapArgs.fromMap(Map<String, dynamic> map) {
    return ScopeMapArgs(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryName: pulumi.Input.fromValue(map['registryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopeMapName: (() { final guardedValue = map['scopeMapName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

