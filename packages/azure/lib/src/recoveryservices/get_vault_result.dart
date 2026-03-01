// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vault_identity.dart';

/// Result data returned by getVault.
class GetVaultResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// (Optional) An `identity` block as defined below.
  final List<GetVaultIdentity> identities;
  /// The Azure location where the resource resides.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The vault's current SKU.
  final String sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;

  /// Creates a new [GetVaultResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identities] (Optional) An `identity` block as defined below.
  /// [location] The Azure location where the resource resides.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [sku] The vault's current SKU.
  /// [tags] A mapping of tags assigned to the resource.
  GetVaultResult({
    required this.id,
    required this.identities,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.sku,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identities': pulumi.Input.encodeList<GetVaultIdentity, Map<String, dynamic>>(identities, (value) => value.toMap()),
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'sku': sku,
      'tags': tags,
    };
  }

  factory GetVaultResult.fromMap(Map<String, dynamic> map) {
    return GetVaultResult(
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetVaultIdentity>(map['identities'], (value) => GetVaultIdentity.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

