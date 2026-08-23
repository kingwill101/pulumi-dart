// ignore_for_file: unused_element, unnecessary_cast

import 'backup_vault_response.dart';
import 'dpp_identity_details_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBackupVault.
class GetBackupVaultResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Optional ETag.
  final String? eTag;
  /// Resource Id represents the complete path to the resource.
  final String id;
  /// Input Managed Identity Details
  final DppIdentityDetailsResponse? identity;
  /// Resource location.
  final String location;
  /// Resource name associated with the resource.
  final String name;
  /// BackupVaultResource properties
  final BackupVaultResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  final String type;

  /// Creates a new [GetBackupVaultResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] Optional ETag.
  /// [id] Resource Id represents the complete path to the resource.
  /// [identity] Input Managed Identity Details
  /// [location] Resource location.
  /// [name] Resource name associated with the resource.
  /// [properties] BackupVaultResource properties
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  const GetBackupVaultResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    this.identity,
    required this.location,
    required this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'name': name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetBackupVaultResult.fromMap(Map<String, dynamic> map) {
    return GetBackupVaultResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: (() { final guardedValue = map['eTag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return DppIdentityDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      name: map['name'] as String,
      properties: BackupVaultResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
