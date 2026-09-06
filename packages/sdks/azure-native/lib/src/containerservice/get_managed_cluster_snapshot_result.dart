// ignore_for_file: unused_element, unnecessary_cast

import 'creation_data_response.dart';
import 'managed_cluster_properties_for_snapshot_response.dart';
import 'system_data_response.dart';

/// Result data returned by getManagedClusterSnapshot.
class GetManagedClusterSnapshotResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// CreationData to be used to specify the source resource ID to create this snapshot.
  final CreationDataResponse? creationData;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// What the properties will be showed when getting managed cluster snapshot. Those properties are read-only.
  final ManagedClusterPropertiesForSnapshotResponse? managedClusterPropertiesReadOnly;
  /// The name of the resource
  final String? name;
  /// The type of a snapshot. The default is NodePool.
  final String? snapshotType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetManagedClusterSnapshotResult({
    this.azureApiVersion,
    this.creationData,
    this.id,
    this.location,
    this.managedClusterPropertiesReadOnly,
    this.name,
    this.snapshotType,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationData': ?creationData?.toMap(),
      'id': ?id,
      'location': ?location,
      'managedClusterPropertiesReadOnly': ?managedClusterPropertiesReadOnly?.toMap(),
      'name': ?name,
      'snapshotType': ?snapshotType,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetManagedClusterSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetManagedClusterSnapshotResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return CreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedClusterPropertiesReadOnly: (() { final guardedValue = map['managedClusterPropertiesReadOnly']; if (guardedValue == null) return null; return ManagedClusterPropertiesForSnapshotResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotType: (() { final guardedValue = map['snapshotType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
