// ignore_for_file: unused_element, unnecessary_cast

import 'iscsi_target_info_response.dart';
import 'managed_by_info_response.dart';
import 'source_creation_data_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// State of the operation on the resource.
  final SourceCreationDataResponse? creationData;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Parent resource information.
  final ManagedByInfoResponse? managedBy;
  /// The name of the resource
  final String name;
  /// State of the operation on the resource.
  final String provisioningState;
  /// Volume size.
  final double sizeGiB;
  /// Storage target information
  final IscsiTargetInfoResponse storageTarget;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Unique Id of the volume in GUID format
  final String volumeId;

  /// Creates a new [GetVolumeResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationData] State of the operation on the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [managedBy] Parent resource information.
  /// [name] The name of the resource
  /// [provisioningState] State of the operation on the resource.
  /// [sizeGiB] Volume size.
  /// [storageTarget] Storage target information
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [volumeId] Unique Id of the volume in GUID format
  GetVolumeResult({
    required this.azureApiVersion,
    this.creationData,
    required this.id,
    this.managedBy,
    required this.name,
    required this.provisioningState,
    required this.sizeGiB,
    required this.storageTarget,
    required this.systemData,
    required this.type,
    required this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'creationData': ?creationData == null ? null : creationData!.toMap(),
      'id': id,
      'managedBy': ?managedBy == null ? null : managedBy!.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'sizeGiB': sizeGiB,
      'storageTarget': storageTarget.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
      'volumeId': volumeId,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      azureApiVersion: map['azureApiVersion'] as String,
      creationData: map['creationData'] == null ? null : SourceCreationDataResponse.fromMap((map['creationData'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      managedBy: map['managedBy'] == null ? null : ManagedByInfoResponse.fromMap((map['managedBy'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      sizeGiB: map['sizeGiB'] as double,
      storageTarget: IscsiTargetInfoResponse.fromMap((map['storageTarget'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      volumeId: map['volumeId'] as String,
    );
  }
}

