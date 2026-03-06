// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerSnapshotsSnapshot {
  /// The time when the snapshot was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  final pulumi.Input<String> createTime;
  /// The ID of the source disk. This parameter has a value even after the source disk is released.
  final pulumi.Input<String> diskId;
  /// The ID of the Snapshot.
  final pulumi.Input<String> id;
  /// The progress of snapshot creation.
  final pulumi.Input<String> progress;
  /// The remarks of the snapshot.
  final pulumi.Input<String> remark;
  /// The ID of the snapshot.
  final pulumi.Input<String> snapshotId;
  /// The name of the snapshot.
  final pulumi.Input<String> snapshotName;
  /// A snapshot of the source of a disk type. Possible values: `System`, `Data`.
  final pulumi.Input<String> sourceDiskType;
  /// The status of the snapshots. Valid values: `Progressing`, `Accomplished` and `Failed`.
  final pulumi.Input<String> status;

  /// Creates a new [GetServerSnapshotsSnapshot].
  /// [createTime] The time when the snapshot was created. The time follows the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time is displayed in UTC.
  /// [diskId] The ID of the source disk. This parameter has a value even after the source disk is released.
  /// [id] The ID of the Snapshot.
  /// [progress] The progress of snapshot creation.
  /// [remark] The remarks of the snapshot.
  /// [snapshotId] The ID of the snapshot.
  /// [snapshotName] The name of the snapshot.
  /// [sourceDiskType] A snapshot of the source of a disk type. Possible values: `System`, `Data`.
  /// [status] The status of the snapshots. Valid values: `Progressing`, `Accomplished` and `Failed`.
  const GetServerSnapshotsSnapshot({
    required this.createTime,
    required this.diskId,
    required this.id,
    required this.progress,
    required this.remark,
    required this.snapshotId,
    required this.snapshotName,
    required this.sourceDiskType,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'diskId': diskId,
      'id': id,
      'progress': progress,
      'remark': remark,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'sourceDiskType': sourceDiskType,
      'status': status,
    };
  }

  factory GetServerSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetServerSnapshotsSnapshot(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      snapshotName: pulumi.Input.fromValue(map['snapshotName'] as String),
      sourceDiskType: pulumi.Input.fromValue(map['sourceDiskType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

