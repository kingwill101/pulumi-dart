// ignore_for_file: unused_element, unnecessary_cast

import 'vault_model_properties_response.dart';
import 'vault_model_response_system_data.dart';

/// Result data returned by getVault.
class GetVaultResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the Id of the resource.
  final String? id;
  /// Gets or sets the location of the vault.
  final String? location;
  /// Gets or sets the name of the resource.
  final String? name;
  /// Vault properties.
  final VaultModelPropertiesResponse? properties;
  final VaultModelResponseSystemData? systemData;
  /// Gets or sets the resource tags.
  final Map<String, String>? tags;
  /// Gets or sets the type of the resource.
  final String? type;

  /// Creates a new [GetVaultResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets or sets the Id of the resource.
  /// [location] Gets or sets the location of the vault.
  /// [name] Gets or sets the name of the resource.
  /// [properties] Vault properties.
  /// [systemData] Optional.
  /// [tags] Gets or sets the resource tags.
  /// [type] Gets or sets the type of the resource.
  const GetVaultResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.properties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetVaultResult.fromMap(Map<String, dynamic> map) {
    return GetVaultResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return VaultModelPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return VaultModelResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
