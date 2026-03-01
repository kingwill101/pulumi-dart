// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vault_model_properties.dart';

/// {@template pulumi_datareplication_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_datareplication_vault_args_doc}
class VaultArgs {
  /// Gets or sets the location of the vault.
  final pulumi.Input<String>? location;
  /// Vault properties.
  final pulumi.Input<VaultModelProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The vault name.
  final pulumi.Input<String>? vaultName;

  /// Creates a new [VaultArgs].
  /// [location] Gets or sets the location of the vault.
  /// [properties] Vault properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Gets or sets the resource tags.
  /// [vaultName] The vault name.
  VaultArgs({
    pulumi.Output<String>? location,
    pulumi.Output<VaultModelProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vaultName,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<VaultModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<VaultModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': ?vaultName,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<VaultModelProperties>(VaultModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vaultName: map['vaultName'] == null ? null : pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

