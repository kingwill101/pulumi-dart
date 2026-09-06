// ignore_for_file: unused_element, unnecessary_cast

import 'managed_service_identity_response.dart';
import 'storage_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureLargeStorageInstance.
class GetAzureLargeStorageInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies the AzureLargeStorageInstance unique ID.
  final String? azureLargeStorageInstanceUniqueIdentifier;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Specifies the storage properties for the AzureLargeStorage instance.
  final StoragePropertiesResponse? storageProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAzureLargeStorageInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureLargeStorageInstanceUniqueIdentifier] Specifies the AzureLargeStorageInstance unique ID.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [storageProperties] Specifies the storage properties for the AzureLargeStorage instance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAzureLargeStorageInstanceResult({
    this.azureApiVersion,
    this.azureLargeStorageInstanceUniqueIdentifier,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.storageProperties,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'azureLargeStorageInstanceUniqueIdentifier': ?azureLargeStorageInstanceUniqueIdentifier,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'storageProperties': ?storageProperties?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAzureLargeStorageInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureLargeStorageInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureLargeStorageInstanceUniqueIdentifier: (() { final guardedValue = map['azureLargeStorageInstanceUniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageProperties: (() { final guardedValue = map['storageProperties']; if (guardedValue == null) return null; return StoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
