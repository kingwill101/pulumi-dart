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
    pulumi.Output<String>? diskId,
    required pulumi.Output<int> endTime,
    pulumi.Output<List<String>>? ids,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? jobId,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> sourceType,
    required pulumi.Output<int> startTime,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      endTime = pulumi.Input.asInput<int>(endTime),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      jobId = pulumi.Input.asOptionalInput<String>(jobId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      sourceType = pulumi.Input.asInput<String>(sourceType),
      startTime = pulumi.Input.asInput<int>(startTime);

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
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      endTime: pulumi.Output.create<int>(map['endTime'] as int),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      jobId: map['jobId'] == null ? null : pulumi.Output.create<String>(map['jobId'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      sourceType: pulumi.Output.create<String>(map['sourceType'] as String),
      startTime: pulumi.Output.create<int>(map['startTime'] as int),
    );
  }
}

