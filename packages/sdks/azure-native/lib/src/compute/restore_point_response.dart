// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference_response.dart';
import 'restore_point_instance_view_response.dart';
import 'restore_point_source_metadata_response.dart';
import 'system_data_response.dart';

/// Restore Point details.
class RestorePointResponse {
  /// ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
  final pulumi.Input<String>? consistencyMode;
  /// List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included.
  final pulumi.Input<List<ApiEntityReferenceResponse>>? excludeDisks;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;
  /// The restore point instance view.
  final pulumi.Input<RestorePointInstanceViewResponse> instanceView;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// Gets the provisioning state of the restore point.
  final pulumi.Input<String> provisioningState;
  /// Gets the details of the VM captured at the time of the restore point creation.
  final pulumi.Input<RestorePointSourceMetadataResponse>? sourceMetadata;
  /// Resource Id of the source restore point from which a copy needs to be created.
  final pulumi.Input<ApiEntityReferenceResponse>? sourceRestorePoint;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Gets the creation time of the restore point.
  final pulumi.Input<String>? timeCreated;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [RestorePointResponse].
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
  RestorePointResponse({
    this.consistencyMode,
    this.excludeDisks,
    required this.id,
    required this.instanceView,
    required this.name,
    required this.provisioningState,
    this.sourceMetadata,
    this.sourceRestorePoint,
    required this.systemData,
    this.timeCreated,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consistencyMode': ?consistencyMode,
      'excludeDisks': ?pulumi.Input.mapOptionalInputValue<List<ApiEntityReferenceResponse>, List<Map<String, dynamic>>>(excludeDisks, (value) => pulumi.Input.encodeList<ApiEntityReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'instanceView': pulumi.Input.mapInputValue<RestorePointInstanceViewResponse, Map<String, dynamic>>(instanceView, (value) => value.toMap()),
      'name': name,
      'provisioningState': provisioningState,
      'sourceMetadata': ?pulumi.Input.mapOptionalInputValue<RestorePointSourceMetadataResponse, Map<String, dynamic>>(sourceMetadata, (value) => value.toMap()),
      'sourceRestorePoint': ?pulumi.Input.mapOptionalInputValue<ApiEntityReferenceResponse, Map<String, dynamic>>(sourceRestorePoint, (value) => value.toMap()),
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'timeCreated': ?timeCreated,
      'type': type,
    };
  }

  factory RestorePointResponse.fromMap(Map<String, dynamic> map) {
    return RestorePointResponse(
      consistencyMode: map['consistencyMode'] == null ? null : (map['consistencyMode']! as String).input(),
      excludeDisks: map['excludeDisks'] == null ? null : (pulumi.Input.decodeList<ApiEntityReferenceResponse>(map['excludeDisks']!, (value) => ApiEntityReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      instanceView: (RestorePointInstanceViewResponse.fromMap((map['instanceView'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      sourceMetadata: map['sourceMetadata'] == null ? null : (RestorePointSourceMetadataResponse.fromMap((map['sourceMetadata']! as Map).cast<String, dynamic>())).input(),
      sourceRestorePoint: map['sourceRestorePoint'] == null ? null : (ApiEntityReferenceResponse.fromMap((map['sourceRestorePoint']! as Map).cast<String, dynamic>())).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      timeCreated: map['timeCreated'] == null ? null : (map['timeCreated']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

