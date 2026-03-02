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
      diskId: map['diskId'] == null ? null : (map['diskId']! as String).input(),
      endTime: (map['endTime'] as int).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceId: (map['instanceId'] as String).input(),
      jobId: map['jobId'] == null ? null : (map['jobId']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      startTime: (map['startTime'] as int).input(),
    );
  }
}

