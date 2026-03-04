// ignore_for_file: unused_element, unnecessary_cast

import 'resource_operational_status_response.dart';
import 'system_data_response.dart';
import 'volume_type_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Requested capacity in GiB
  final double capacityGiB;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// String KV pairs indicating labels
  final Map<String, String> labels;

  /// The name of the resource
  final String name;

  /// The status of the last operation.
  final String provisioningState;

  /// The status of the resource.
  final ResourceOperationalStatusResponse status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Properties of the volume
  final VolumeTypeResponse volumeType;

  /// Creates a new [GetVolumeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [capacityGiB] Requested capacity in GiB
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [labels] String KV pairs indicating labels
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [status] The status of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [volumeType] Properties of the volume
  GetVolumeResult({
    required this.azureApiVersion,
    required this.capacityGiB,
    required this.id,
    required this.labels,
    required this.name,
    required this.provisioningState,
    required this.status,
    required this.systemData,
    required this.type,
    required this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'capacityGiB': capacityGiB,
      'id': id,
      'labels': labels,
      'name': name,
      'provisioningState': provisioningState,
      'status': status.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'volumeType': volumeType.toMap(),
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      capacityGiB: map['capacityGiB'] as double,
      id: map['id'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      status: ResourceOperationalStatusResponse.fromMap(
        (map['status']! as Map).cast<String, dynamic>(),
      ),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
      volumeType: VolumeTypeResponse.fromMap(
        (map['volumeType']! as Map).cast<String, dynamic>(),
      ),
    );
  }
}
