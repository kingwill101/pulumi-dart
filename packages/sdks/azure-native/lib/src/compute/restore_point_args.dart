// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_entity_reference.dart';
import 'restore_point_source_metadata.dart';

/// {@template pulumi_compute_restore_point_args_doc}
/// The set of arguments for RestorePoint.
/// {@endtemplate}
/// {@macro pulumi_compute_restore_point_args_doc}
class RestorePointArgs {
  /// ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
  final pulumi.Input<String>? consistencyMode;
  /// List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included.
  final pulumi.Input<List<ApiEntityReference>>? excludeDisks;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the restore point collection.
  final pulumi.Input<String> restorePointCollectionName;
  /// The name of the restore point.
  final pulumi.Input<String>? restorePointName;
  /// Gets the details of the VM captured at the time of the restore point creation.
  final pulumi.Input<RestorePointSourceMetadata>? sourceMetadata;
  /// Resource Id of the source restore point from which a copy needs to be created.
  final pulumi.Input<ApiEntityReference>? sourceRestorePoint;
  /// Gets the creation time of the restore point.
  final pulumi.Input<String>? timeCreated;

  /// Creates a new [RestorePointArgs].
  /// [consistencyMode] ConsistencyMode of the RestorePoint. Can be specified in the input while creating a restore point. For now, only CrashConsistent is accepted as a valid input. Please refer to https://aka.ms/RestorePoints for more details.
  /// [excludeDisks] List of disk resource ids that the customer wishes to exclude from the restore point. If no disks are specified, all disks will be included.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restorePointCollectionName] The name of the restore point collection.
  /// [restorePointName] The name of the restore point.
  /// [sourceMetadata] Gets the details of the VM captured at the time of the restore point creation.
  /// [sourceRestorePoint] Resource Id of the source restore point from which a copy needs to be created.
  /// [timeCreated] Gets the creation time of the restore point.
  RestorePointArgs({
    this.consistencyMode,
    this.excludeDisks,
    required this.resourceGroupName,
    required this.restorePointCollectionName,
    this.restorePointName,
    this.sourceMetadata,
    this.sourceRestorePoint,
    this.timeCreated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consistencyMode': ?consistencyMode,
      'excludeDisks': ?pulumi.Input.mapOptionalInputValue<List<ApiEntityReference>, List<Map<String, dynamic>>>(excludeDisks, (value) => pulumi.Input.encodeList<ApiEntityReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'restorePointCollectionName': restorePointCollectionName,
      'restorePointName': ?restorePointName,
      'sourceMetadata': ?pulumi.Input.mapOptionalInputValue<RestorePointSourceMetadata, Map<String, dynamic>>(sourceMetadata, (value) => value.toMap()),
      'sourceRestorePoint': ?pulumi.Input.mapOptionalInputValue<ApiEntityReference, Map<String, dynamic>>(sourceRestorePoint, (value) => value.toMap()),
      'timeCreated': ?timeCreated,
    };
  }

  factory RestorePointArgs.fromMap(Map<String, dynamic> map) {
    return RestorePointArgs(
      consistencyMode: map['consistencyMode'] == null ? null : (map['consistencyMode']! as String).input(),
      excludeDisks: map['excludeDisks'] == null ? null : (pulumi.Input.decodeList<ApiEntityReference>(map['excludeDisks']!, (value) => ApiEntityReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      restorePointCollectionName: (map['restorePointCollectionName'] as String).input(),
      restorePointName: map['restorePointName'] == null ? null : (map['restorePointName']! as String).input(),
      sourceMetadata: map['sourceMetadata'] == null ? null : (RestorePointSourceMetadata.fromMap((map['sourceMetadata']! as Map).cast<String, dynamic>())).input(),
      sourceRestorePoint: map['sourceRestorePoint'] == null ? null : (ApiEntityReference.fromMap((map['sourceRestorePoint']! as Map).cast<String, dynamic>())).input(),
      timeCreated: map['timeCreated'] == null ? null : (map['timeCreated']! as String).input(),
    );
  }
}

