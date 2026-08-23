// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPoolSnapshot.
class GetCapacityPoolSnapshotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the snapshot
  final String created;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Resource location
  final String location;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// UUID v4 used to identify the Snapshot
  final String snapshotId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetCapacityPoolSnapshotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [created] The creation date of the snapshot
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] Resource location
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [snapshotId] UUID v4 used to identify the Snapshot
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetCapacityPoolSnapshotResult({
    required this.azureApiVersion,
    required this.created,
    required this.id,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.snapshotId,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'created': created,
      'id': id,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'snapshotId': snapshotId,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetCapacityPoolSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolSnapshotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      created: map['created'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      snapshotId: map['snapshotId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
