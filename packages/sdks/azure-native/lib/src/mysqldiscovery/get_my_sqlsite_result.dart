// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMySQLSite.
class GetMySQLSiteResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The extended location.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The mapped master Site Id.
  final String? masterSiteId;
  /// The mapped migrate project Id.
  final String? migrateProjectId;
  /// The name of the resource
  final String? name;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetMySQLSiteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The extended location.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [masterSiteId] The mapped master Site Id.
  /// [migrateProjectId] The mapped migrate project Id.
  /// [name] The name of the resource
  /// [provisioningState] Gets or sets the provisioning state.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMySQLSiteResult({
    this.azureApiVersion,
    this.extendedLocation,
    this.id,
    this.location,
    this.masterSiteId,
    this.migrateProjectId,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': ?id,
      'location': ?location,
      'masterSiteId': ?masterSiteId,
      'migrateProjectId': ?migrateProjectId,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetMySQLSiteResult.fromMap(Map<String, dynamic> map) {
    return GetMySQLSiteResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      masterSiteId: (() { final guardedValue = map['masterSiteId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      migrateProjectId: (() { final guardedValue = map['migrateProjectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
