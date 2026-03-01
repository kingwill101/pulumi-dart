// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerservice_registry_token_registry_token_args_doc}
/// The set of arguments for RegistryToken.
/// {@endtemplate}
/// {@macro pulumi_containerservice_registry_token_registry_token_args_doc}
class RegistryTokenArgs {
  /// The name of the Container Registry. Changing this forces a new resource to be created.
  final pulumi.Input<String> containerRegistryName;
  /// Should the Container Registry token be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Specifies the name of the token. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The ID of the Container Registry Scope Map associated with the token.
  final pulumi.Input<String> scopeMapId;

  /// Creates a new [RegistryTokenArgs].
  /// [containerRegistryName] The name of the Container Registry. Changing this forces a new resource to be created.
  /// [enabled] Should the Container Registry token be enabled? Defaults to `true`.
  /// [name] Specifies the name of the token. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Container Registry token. Changing this forces a new resource to be created.
  /// [scopeMapId] The ID of the Container Registry Scope Map associated with the token.
  RegistryTokenArgs({
    required String containerRegistryName,
    bool? enabled,
    String? name,
    required String resourceGroupName,
    required String scopeMapId,
  }) :
      containerRegistryName = pulumi.Input.asInput<String>(containerRegistryName),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopeMapId = pulumi.Input.asInput<String>(scopeMapId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': containerRegistryName,
      'enabled': ?enabled,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopeMapId': scopeMapId,
    };
  }

  factory RegistryTokenArgs.fromMap(Map<String, dynamic> map) {
    return RegistryTokenArgs(
      containerRegistryName: map['containerRegistryName'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      scopeMapId: map['scopeMapId'] as String,
    );
  }
}

