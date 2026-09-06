// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'vault_properties_response.dart';

/// Result data returned by getVault.
class GetVaultResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified identifier of the key vault resource.
  final String? id;
  /// Azure location of the key vault resource.
  final String? location;
  /// Name of the key vault resource.
  final String? name;
  /// Properties of the vault
  final VaultPropertiesResponse? properties;
  /// System metadata for the key vault.
  final SystemDataResponse? systemData;
  /// Tags assigned to the key vault resource.
  final Map<String, String>? tags;
  /// Resource type of the key vault resource.
  final String? type;

  /// Creates a new [GetVaultResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the key vault resource.
  /// [location] Azure location of the key vault resource.
  /// [name] Name of the key vault resource.
  /// [properties] Properties of the vault
  /// [systemData] System metadata for the key vault.
  /// [tags] Tags assigned to the key vault resource.
  /// [type] Resource type of the key vault resource.
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
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return VaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
