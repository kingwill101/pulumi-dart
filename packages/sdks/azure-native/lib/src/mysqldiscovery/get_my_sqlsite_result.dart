// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMySQLSite.
class GetMySQLSiteResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The extended location.
  final ExtendedLocationResponse extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The mapped master Site Id.
  final String masterSiteId;
  /// The mapped migrate project Id.
  final String migrateProjectId;
  /// The name of the resource
  final String name;
  /// Gets or sets the provisioning state.
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
    required this.azureApiVersion,
    required this.extendedLocation,
    required this.id,
    required this.location,
    required this.masterSiteId,
    required this.migrateProjectId,
    required this.name,
    this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': extendedLocation.toMap(),
      'id': id,
      'location': location,
      'masterSiteId': masterSiteId,
      'migrateProjectId': migrateProjectId,
      'name': name,
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMySQLSiteResult.fromMap(Map<String, dynamic> map) {
    return GetMySQLSiteResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: ExtendedLocationResponse.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] as String,
      masterSiteId: map['masterSiteId'] as String,
      migrateProjectId: map['migrateProjectId'] as String,
      name: map['name'] as String,
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
