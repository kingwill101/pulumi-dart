// ignore_for_file: unused_element, unnecessary_cast

import 'snapshot_creation_data_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVolumeSnapshot.
class GetVolumeSnapshotResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Data used when creating a volume snapshot.
  final SnapshotCreationDataResponse creationData;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The name of the resource
  final String name;

  /// State of the operation on the resource.
  final String provisioningState;

  /// Size of Source Volume
  final double sourceVolumeSizeGiB;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Source Volume Name of a snapshot
  final String volumeName;

  /// Creates a new [GetVolumeSnapshotResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationData] Data used when creating a volume snapshot.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] State of the operation on the resource.
  /// [sourceVolumeSizeGiB] Size of Source Volume
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [volumeName] Source Volume Name of a snapshot
  GetVolumeSnapshotResult({
    required this.azureApiVersion,
    required this.creationData,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.sourceVolumeSizeGiB,
    required this.systemData,
    required this.type,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationData': creationData.toMap(),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'sourceVolumeSizeGiB': sourceVolumeSizeGiB,
      'systemData': systemData.toMap(),
      'type': type,
      'volumeName': volumeName,
    };
  }

  factory GetVolumeSnapshotResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeSnapshotResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationData: SnapshotCreationDataResponse.fromMap(
        (map['creationData']! as Map).cast<String, dynamic>(),
      ),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sourceVolumeSizeGiB: map['sourceVolumeSizeGiB'] as double,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      volumeName: map['volumeName'] as String,
    );
  }
}
