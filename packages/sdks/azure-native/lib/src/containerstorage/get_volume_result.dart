// ignore_for_file: unused_element, unnecessary_cast

import 'resource_operational_status_response.dart';
import 'system_data_response.dart';
import 'volume_type_response.dart';

/// Result data returned by getVolume.
class GetVolumeResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Requested capacity in GiB
  final double? capacityGiB;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// String KV pairs indicating labels
  final Map<String, String>? labels;
  /// The name of the resource
  final String? name;
  /// The status of the last operation.
  final String? provisioningState;
  /// The status of the resource.
  final ResourceOperationalStatusResponse? status;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Properties of the volume
  final VolumeTypeResponse? volumeType;

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
  const GetVolumeResult({
    this.azureApiVersion,
    this.capacityGiB,
    this.id,
    this.labels,
    this.name,
    this.provisioningState,
    this.status,
    this.systemData,
    this.type,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'capacityGiB': ?capacityGiB,
      'id': ?id,
      'labels': ?labels,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'status': ?status?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'volumeType': ?volumeType?.toMap(),
    };
  }

  factory GetVolumeResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      capacityGiB: (() { final guardedValue = map['capacityGiB']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return ResourceOperationalStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return VolumeTypeResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
