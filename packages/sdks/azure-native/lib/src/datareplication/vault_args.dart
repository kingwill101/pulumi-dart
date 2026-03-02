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
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
    this.vaultName,
  });

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
      location: map['location'] == null ? null : (map['location'] as String).input(),
      properties: map['properties'] == null ? null : (VaultModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vaultName: map['vaultName'] == null ? null : (map['vaultName'] as String).input(),
    );
  }
}

