// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_properties.dart';

/// {@template pulumi_keyvault_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_keyvault_vault_args_doc}
class VaultArgs {
  /// The supported Azure location where the key vault should be created.
  final pulumi.Input<String>? location;

  /// Properties of the vault
  final pulumi.Input<VaultProperties> properties;

  /// The name of the Resource Group to which the server belongs.
  final pulumi.Input<String> resourceGroupName;

  /// The tags that will be assigned to the key vault.
  final pulumi.Input<Map<String, String>>? tags;

  /// Name of the vault
  final pulumi.Input<String>? vaultName;

  /// Creates a new [VaultArgs].
  /// [location] The supported Azure location where the key vault should be created.
  /// [properties] Properties of the vault
  /// [resourceGroupName] The name of the Resource Group to which the server belongs.
  /// [tags] The tags that will be assigned to the key vault.
  /// [vaultName] Name of the vault
  VaultArgs({
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
    this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties':
          pulumi.Input.mapInputValue<VaultProperties, Map<String, dynamic>>(
            properties,
            (value) => value.toMap(),
          ),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': ?vaultName,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        VaultProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vaultName: (() {
        final guardedValue = map['vaultName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
