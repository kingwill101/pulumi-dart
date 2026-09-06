// ignore_for_file: unused_element, unnecessary_cast

import 'azure_bare_metal_storage_instance_identity_response.dart';
import 'storage_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAzureBareMetalStorageInstance.
class GetAzureBareMetalStorageInstanceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Specifies the AzureBareMetaStorageInstance unique ID.
  final String? azureBareMetalStorageInstanceUniqueIdentifier;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The identity of Azure Bare Metal Storage Instance, if configured.
  final AzureBareMetalStorageInstanceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Specifies the storage properties for the AzureBareMetalStorage instance.
  final StoragePropertiesResponse? storageProperties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetAzureBareMetalStorageInstanceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [azureBareMetalStorageInstanceUniqueIdentifier] Specifies the AzureBareMetaStorageInstance unique ID.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The identity of Azure Bare Metal Storage Instance, if configured.
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [storageProperties] Specifies the storage properties for the AzureBareMetalStorage instance.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetAzureBareMetalStorageInstanceResult({
    this.azureApiVersion,
    this.azureBareMetalStorageInstanceUniqueIdentifier,
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
      'azureBareMetalStorageInstanceUniqueIdentifier': ?azureBareMetalStorageInstanceUniqueIdentifier,
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

  factory GetAzureBareMetalStorageInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetAzureBareMetalStorageInstanceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureBareMetalStorageInstanceUniqueIdentifier: (() { final guardedValue = map['azureBareMetalStorageInstanceUniqueIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return AzureBareMetalStorageInstanceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageProperties: (() { final guardedValue = map['storageProperties']; if (guardedValue == null) return null; return StoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
