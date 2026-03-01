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
    pulumi.Output<String>? location,
    required pulumi.Output<VaultProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vaultName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asInput<VaultProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': pulumi.Input.mapInputValue<VaultProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': ?vaultName,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: pulumi.Output.create<VaultProperties>(VaultProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: map['vaultName'] == null ? null : pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

