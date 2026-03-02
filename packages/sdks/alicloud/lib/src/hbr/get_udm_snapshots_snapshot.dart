// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUdmSnapshotsSnapshot {
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  final pulumi.Input<String> diskId;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// ECS instance ID
  final pulumi.Input<String> instanceId;
  /// The ID of the backup job that creates the snapshot.
  final pulumi.Input<String> jobId;
  /// Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  final pulumi.Input<String> sourceType;
  /// Start Time
  final pulumi.Input<int> startTime;
  /// The first ID of the resource
  final pulumi.Input<String> udmSnapshotId;

  /// Creates a new [GetUdmSnapshotsSnapshot].
  /// [createTime] The creation time of the resource
  /// [diskId] Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  /// [id] The ID of the resource supplied above.
  /// [instanceId] ECS instance ID
  /// [jobId] The ID of the backup job that creates the snapshot.
  /// [sourceType] Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  /// [startTime] Start Time
  /// [udmSnapshotId] The first ID of the resource
  GetUdmSnapshotsSnapshot({
    required this.createTime,
    required this.diskId,
    required this.id,
    required this.instanceId,
    required this.jobId,
    required this.sourceType,
    required this.startTime,
    required this.udmSnapshotId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'diskId': diskId,
      'id': id,
      'instanceId': instanceId,
      'jobId': jobId,
      'sourceType': sourceType,
      'startTime': startTime,
      'udmSnapshotId': udmSnapshotId,
    };
  }

  factory GetUdmSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetUdmSnapshotsSnapshot(
      createTime: (map['createTime'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      jobId: (map['jobId'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
      startTime: (map['startTime'] as int).input(),
      udmSnapshotId: (map['udmSnapshotId'] as String).input(),
    );
  }
}

