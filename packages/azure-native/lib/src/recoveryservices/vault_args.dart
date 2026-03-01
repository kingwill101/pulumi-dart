// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_data.dart';
import 'sku.dart';
import 'vault_properties.dart';

/// {@template pulumi_recoveryservices_vault_args_doc}
/// The set of arguments for Vault.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_vault_args_doc}
class VaultArgs {
  /// Identity for the resource.
  final pulumi.Input<IdentityData>? identity;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// Properties of the vault.
  final pulumi.Input<VaultProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Identifies the unique system identifier for each Azure resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the recovery services vault.
  final pulumi.Input<String>? vaultName;

  /// Creates a new [VaultArgs].
  /// [identity] Identity for the resource.
  /// [location] Resource location.
  /// [properties] Properties of the vault.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Identifies the unique system identifier for each Azure resource.
  /// [tags] Resource tags.
  /// [vaultName] The name of the recovery services vault.
  VaultArgs({
    IdentityData? identity,
    String? location,
    VaultProperties? properties,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
    String? vaultName,
  }) :
      identity = pulumi.Input.asOptionalInput<IdentityData>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<VaultProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vaultName = pulumi.Input.asOptionalInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityData, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<VaultProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'vaultName': ?vaultName,
    };
  }

  factory VaultArgs.fromMap(Map<String, dynamic> map) {
    return VaultArgs(
      identity: map['identity'] == null ? null : IdentityData.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      properties: map['properties'] == null ? null : VaultProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vaultName: map['vaultName'] == null ? null : map['vaultName'] as String,
    );
  }
}

