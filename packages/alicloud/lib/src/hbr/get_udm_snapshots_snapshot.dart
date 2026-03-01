// ignore_for_file: unused_element, unnecessary_cast


class GetUdmSnapshotsSnapshot {
  /// The creation time of the resource
  final String createTime;
  /// Cloud disk ID. This field is valid only when SourceType = UDM_ECS_DISK.
  final String diskId;
  /// The ID of the resource supplied above.
  final String id;
  /// ECS instance ID
  final String instanceId;
  /// The ID of the backup job that creates the snapshot.
  final String jobId;
  /// Data source type. Only UDM_ECS and UDM_ECS_DISK are supported.
  final String sourceType;
  /// Start Time
  final int startTime;
  /// The first ID of the resource
  final String udmSnapshotId;

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
      createTime: map['createTime'] as String,
      diskId: map['diskId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      jobId: map['jobId'] as String,
      sourceType: map['sourceType'] as String,
      startTime: map['startTime'] as int,
      udmSnapshotId: map['udmSnapshotId'] as String,
    );
  }
}

