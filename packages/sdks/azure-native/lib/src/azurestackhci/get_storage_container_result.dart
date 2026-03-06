// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'storage_container_status_response.dart';
import 'system_data_response.dart';

/// Result data returned by getStorageContainer.
class GetStorageContainerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The extendedLocation of the resource.
  final ExtendedLocationResponse? extendedLocation;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Path of the storage container on the disk
  final String path;
  /// Provisioning state of the storage container.
  final String provisioningState;
  /// The observed state of storage containers
  final StorageContainerStatusResponse status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetStorageContainerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [path] Path of the storage container on the disk
  /// [provisioningState] Provisioning state of the storage container.
  /// [status] The observed state of storage containers
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetStorageContainerResult({
    required this.azureApiVersion,
    this.extendedLocation,
    required this.id,
    required this.location,
    required this.name,
    required this.path,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'location': location,
      'name': name,
      'path': path,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetStorageContainerResult.fromMap(Map<String, dynamic> map) {
    return GetStorageContainerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
      provisioningState: map['provisioningState'] as String,
      status: StorageContainerStatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

