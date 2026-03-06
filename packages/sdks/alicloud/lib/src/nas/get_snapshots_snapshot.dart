// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotsSnapshot {
  /// The creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The description of the snapshot.
  final pulumi.Input<String> description;
  /// The type of the encryption.
  final pulumi.Input<int> encryptType;
  /// The ID of the Snapshot.
  final pulumi.Input<String> id;
  /// The progress of the snapshot creation. The value of this parameter is expressed as a percentage.
  final pulumi.Input<String> progress;
  /// The remaining time that is required to create the snapshot. Unit: seconds.
  final pulumi.Input<int> remainTime;
  /// The retention period of the automatic snapshot. Unit: days.
  final pulumi.Input<int> retentionDays;
  /// The ID of the resource.
  final pulumi.Input<String> snapshotId;
  /// The name of the snapshot.
  final pulumi.Input<String> snapshotName;
  /// The ID of the source file system.
  final pulumi.Input<String> sourceFileSystemId;
  /// The capacity of the source file system. Unit: GiB.
  final pulumi.Input<String> sourceFileSystemSize;
  /// The version of the source file system.
  final pulumi.Input<String> sourceFileSystemVersion;
  /// The status of the snapshot.
  final pulumi.Input<String> status;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [createTime] The creation time of the resource.
  /// [description] The description of the snapshot.
  /// [encryptType] The type of the encryption.
  /// [id] The ID of the Snapshot.
  /// [progress] The progress of the snapshot creation. The value of this parameter is expressed as a percentage.
  /// [remainTime] The remaining time that is required to create the snapshot. Unit: seconds.
  /// [retentionDays] The retention period of the automatic snapshot. Unit: days.
  /// [snapshotId] The ID of the resource.
  /// [snapshotName] The name of the snapshot.
  /// [sourceFileSystemId] The ID of the source file system.
  /// [sourceFileSystemSize] The capacity of the source file system. Unit: GiB.
  /// [sourceFileSystemVersion] The version of the source file system.
  /// [status] The status of the snapshot.
  const GetSnapshotsSnapshot({
    required this.createTime,
    required this.description,
    required this.encryptType,
    required this.id,
    required this.progress,
    required this.remainTime,
    required this.retentionDays,
    required this.snapshotId,
    required this.snapshotName,
    required this.sourceFileSystemId,
    required this.sourceFileSystemSize,
    required this.sourceFileSystemVersion,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'encryptType': encryptType,
      'id': id,
      'progress': progress,
      'remainTime': remainTime,
      'retentionDays': retentionDays,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'sourceFileSystemId': sourceFileSystemId,
      'sourceFileSystemSize': sourceFileSystemSize,
      'sourceFileSystemVersion': sourceFileSystemVersion,
      'status': status,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      encryptType: pulumi.Input.fromValue(map['encryptType'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as String),
      remainTime: pulumi.Input.fromValue(map['remainTime'] as int),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      snapshotName: pulumi.Input.fromValue(map['snapshotName'] as String),
      sourceFileSystemId: pulumi.Input.fromValue(map['sourceFileSystemId'] as String),
      sourceFileSystemSize: pulumi.Input.fromValue(map['sourceFileSystemSize'] as String),
      sourceFileSystemVersion: pulumi.Input.fromValue(map['sourceFileSystemVersion'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

