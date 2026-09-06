// ignore_for_file: unused_element, unnecessary_cast

import 'iscsi_target_info_response.dart';
import 'managed_by_info_response.dart';
import 'source_creation_data_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// State of the operation on the resource.
  final SourceCreationDataResponse? creationData;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Parent resource information.
  final ManagedByInfoResponse? managedBy;
  /// The name of the resource
  final String? name;
  /// State of the operation on the resource.
  final String? provisioningState;
  /// Volume size.
  final double? sizeGiB;
  /// Storage target information
  final IscsiTargetInfoResponse? storageTarget;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Unique Id of the volume in GUID format
  final String? volumeId;

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
  const GetVolumeResult({
    this.azureApiVersion,
    this.creationData,
    this.id,
    this.managedBy,
    this.name,
    this.provisioningState,
    this.sizeGiB,
    this.storageTarget,
    this.systemData,
    this.type,
    this.volumeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationData': ?creationData?.toMap(),
      'id': ?id,
      'managedBy': ?managedBy?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sizeGiB': ?sizeGiB,
      'storageTarget': ?storageTarget?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'volumeId': ?volumeId,
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationData: (() { final guardedValue = map['creationData']; if (guardedValue == null) return null; return SourceCreationDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return ManagedByInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sizeGiB: (() { final guardedValue = map['sizeGiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      storageTarget: (() { final guardedValue = map['storageTarget']; if (guardedValue == null) return null; return IscsiTargetInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
