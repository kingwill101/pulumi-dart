// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hbr_get_udm_snapshots_get_udm_snapshots_args_doc}
/// Arguments for getUdmSnapshots.
/// {@endtemplate}
/// {@macro pulumi_hbr_get_udm_snapshots_get_udm_snapshots_args_doc}
class GetUdmSnapshotsArgs {
  /// Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  final pulumi.Input<String>? diskId;

  /// End Time
  final pulumi.Input<int> endTime;

  /// A list of Udm Snapshot IDs.
  final pulumi.Input<List<String>>? ids;

  /// ECS instance ID
  final pulumi.Input<String> instanceId;

  /// The ID of the backup job that creates the snapshot.
  final pulumi.Input<String>? jobId;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  final pulumi.Input<String> sourceType;

  /// Start Time
  final pulumi.Input<int> startTime;

  /// Creates a new [GetUdmSnapshotsArgs].
  /// [diskId] Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  /// [endTime] End Time
  /// [ids] A list of Udm Snapshot IDs.
  /// [instanceId] ECS instance ID
  /// [jobId] The ID of the backup job that creates the snapshot.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [sourceType] Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  /// [startTime] Start Time
  GetUdmSnapshotsArgs({
    this.diskId,
    required this.endTime,
    this.ids,
    required this.instanceId,
    this.jobId,
    this.outputFile,
    required this.sourceType,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'endTime': endTime,
      'ids': ?ids,
      'instanceId': instanceId,
      'jobId': ?jobId,
      'outputFile': ?outputFile,
      'sourceType': sourceType,
      'startTime': startTime,
    };
  }

  factory GetUdmSnapshotsArgs.fromMap(Map<String, dynamic> map) {
    return GetUdmSnapshotsArgs(
      diskId: (() {
        final guardedValue = map['diskId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endTime: pulumi.Input.fromValue(map['endTime'] as int),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      jobId: (() {
        final guardedValue = map['jobId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as int),
    );
  }
}
