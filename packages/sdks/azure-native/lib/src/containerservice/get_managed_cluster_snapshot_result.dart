// ignore_for_file: unused_element, unnecessary_cast

import 'creation_data_response.dart';
import 'managed_cluster_properties_for_snapshot_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedClusterSnapshot.
class GetManagedClusterSnapshotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// CreationData to be used to specify the source resource ID to create this snapshot.
  final CreationDataResponse? creationData;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// What the properties will be showed when getting managed cluster snapshot. Those properties are read-only.
  final ManagedClusterPropertiesForSnapshotResponse managedClusterPropertiesReadOnly;
  /// The name of the resource
  final String name;
  /// The type of a snapshot. The default is NodePool.
  final String? snapshotType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetManagedClusterSnapshotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationData] CreationData to be used to specify the source resource ID to create this snapshot.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [managedClusterPropertiesReadOnly] What the properties will be showed when getting managed cluster snapshot. Those properties are read-only.
  /// [name] The name of the resource
  /// [snapshotType] The type of a snapshot. The default is NodePool.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetManagedClusterSnapshotResult({
    required this.azureApiVersion,
    this.creationData,
    required this.id,
    required this.location,
    required this.managedClusterPropertiesReadOnly,
    required this.name,
    this.snapshotType,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationData': ?creationData?.toMap(),
      'id': id,
      'location': location,
      'managedClusterPropertiesReadOnly': managedClusterPropertiesReadOnly.toMap(),
      'name': name,
      'snapshotType': ?snapshotType,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetManagedClusterSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterSnapshotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: map['location'] as String,
      managedClusterPropertiesReadOnly: ManagedClusterPropertiesForSnapshotResponse.fromMap((map['managedClusterPropertiesReadOnly']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

