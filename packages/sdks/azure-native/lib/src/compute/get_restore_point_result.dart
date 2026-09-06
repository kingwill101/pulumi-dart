// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'restore_point_instance_view_response.dart';
import 'restore_point_source_metadata_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRestorePoint.
class GetRestorePointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
  final String? consistencyMode;
  /// List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included.
  final List<ApiEntityReferenceResponse>? excludeDisks;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The restore point instance view.
  final RestorePointInstanceViewResponse? instanceView;
  /// The name of the resource
  final String? name;
  /// Gets the provisioning state of the restore point.
  final String? provisioningState;
  /// Gets the details of the VM captured at the time of the restore point creation.
  final RestorePointSourceMetadataResponse? sourceMetadata;
  /// Resource Id of the source restore point from which a copy needs to be created.
  final ApiEntityReferenceResponse? sourceRestorePoint;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Gets the creation time of the restore point.
  final String? timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRestorePointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [consistencyMode] ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
  /// [excludeDisks] List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [instanceView] The restore point instance view.
  /// [name] The name of the resource
  /// [provisioningState] Gets the provisioning state of the restore point.
  /// [sourceMetadata] Gets the details of the VM captured at the time of the restore point creation.
  /// [sourceRestorePoint] Resource Id of the source restore point from which a copy needs to be created.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [timeCreated] Gets the creation time of the restore point.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRestorePointResult({
    this.azureApiVersion,
    this.consistencyMode,
    this.excludeDisks,
    this.id,
    this.instanceView,
    this.name,
    this.provisioningState,
    this.sourceMetadata,
    this.sourceRestorePoint,
    this.systemData,
    this.timeCreated,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'consistencyMode': ?consistencyMode,
      'excludeDisks': ?(() { final guardedValue = excludeDisks; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApiEntityReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceView': ?instanceView?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sourceMetadata': ?sourceMetadata?.toMap(),
      'sourceRestorePoint': ?sourceRestorePoint?.toMap(),
      'systemData': ?systemData?.toMap(),
      'timeCreated': ?timeCreated,
      'type': ?type,
    };
  }

  factory GetRestorePointResult.fromMap(Map<String, dynamic> map) {
    return GetRestorePointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      consistencyMode: (() { final guardedValue = map['consistencyMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      excludeDisks: (() { final guardedValue = map['excludeDisks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApiEntityReferenceResponse>(guardedValue, (value) => ApiEntityReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceView: (() { final guardedValue = map['instanceView']; if (guardedValue == null) return null; return RestorePointInstanceViewResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceMetadata: (() { final guardedValue = map['sourceMetadata']; if (guardedValue == null) return null; return RestorePointSourceMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceRestorePoint: (() { final guardedValue = map['sourceRestorePoint']; if (guardedValue == null) return null; return ApiEntityReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
