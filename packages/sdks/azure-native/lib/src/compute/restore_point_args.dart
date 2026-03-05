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
      consistencyMode: (() { final guardedValue = map['consistencyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeDisks: (() { final guardedValue = map['excludeDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiEntityReference>(guardedValue, (value) => ApiEntityReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorePointCollectionName: pulumi.Input.fromValue(map['restorePointCollectionName'] as String),
      restorePointName: (() { final guardedValue = map['restorePointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMetadata: (() { final guardedValue = map['sourceMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePointSourceMetadata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceRestorePoint: (() { final guardedValue = map['sourceRestorePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiEntityReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeCreated: (() { final guardedValue = map['timeCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

