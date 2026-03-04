// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSnapshotsSnapshot {
  final pulumi.Input<String> category;

  /// Creation time. Time of creation. It is represented according to ISO8601, and UTC time is used. Format: YYYY-MM-DDThh:mmZ.
  final pulumi.Input<String> creationTime;

  /// Description of the snapshot.
  final pulumi.Input<String> description;
  final pulumi.Input<String> diskId;

  /// Whether the snapshot is encrypted or not.
  final pulumi.Input<bool> encrypted;

  /// ID of the snapshot.
  final pulumi.Input<String> id;
  final pulumi.Input<bool> instantAccess;
  final pulumi.Input<int> instantAccessRetentionDays;

  /// Name of the snapshot.
  final pulumi.Input<String> name;

  /// Product code on the image market place.
  final pulumi.Input<String> productCode;

  /// Progress of snapshot creation, presented in percentage.
  final pulumi.Input<String> progress;

  /// The remaining time of a snapshot creation task, in seconds.
  final pulumi.Input<int> remainTime;
  final pulumi.Input<String> resourceGroupId;

  /// The number of days that an automatic snapshot retains in the console for your instance.
  final pulumi.Input<int> retentionDays;
  final pulumi.Input<String> snapshotId;
  final pulumi.Input<String> snapshotName;
  final pulumi.Input<String> snapshotSn;
  final pulumi.Input<String> snapshotType;

  /// Source disk ID, which is retained after the source disk of the snapshot is deleted.
  final pulumi.Input<String> sourceDiskId;

  /// Size of the source disk, measured in GB.
  final pulumi.Input<String> sourceDiskSize;

  /// Source disk attribute. Value range: `System`,`Data`.
  final pulumi.Input<String> sourceDiskType;
  final pulumi.Input<String> sourceStorageType;

  /// The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  final pulumi.Input<String> status;

  /// A map of tags assigned to the snapshot.
  final pulumi.Input<Map<String, String>> tags;
  final pulumi.Input<String> type;

  /// Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  final pulumi.Input<String> usage;

  /// Creates a new [GetSnapshotsSnapshot].
  /// [category] Required.
  /// [creationTime] Creation time. Time of creation. It is represented according to ISO8601, and UTC time is used. Format: YYYY-MM-DDThh:mmZ.
  /// [description] Description of the snapshot.
  /// [diskId] Required.
  /// [encrypted] Whether the snapshot is encrypted or not.
  /// [id] ID of the snapshot.
  /// [instantAccess] Required.
  /// [instantAccessRetentionDays] Required.
  /// [name] Name of the snapshot.
  /// [productCode] Product code on the image market place.
  /// [progress] Progress of snapshot creation, presented in percentage.
  /// [remainTime] The remaining time of a snapshot creation task, in seconds.
  /// [resourceGroupId] Required.
  /// [retentionDays] The number of days that an automatic snapshot retains in the console for your instance.
  /// [snapshotId] Required.
  /// [snapshotName] Required.
  /// [snapshotSn] Required.
  /// [snapshotType] Required.
  /// [sourceDiskId] Source disk ID, which is retained after the source disk of the snapshot is deleted.
  /// [sourceDiskSize] Size of the source disk, measured in GB.
  /// [sourceDiskType] Source disk attribute. Value range: `System`,`Data`.
  /// [sourceStorageType] Required.
  /// [status] The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  /// [tags] A map of tags assigned to the snapshot.
  /// [type] Required.
  /// [usage] Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  GetSnapshotsSnapshot({
    required this.category,
    required this.creationTime,
    required this.description,
    required this.diskId,
    required this.encrypted,
    required this.id,
    required this.instantAccess,
    required this.instantAccessRetentionDays,
    required this.name,
    required this.productCode,
    required this.progress,
    required this.remainTime,
    required this.resourceGroupId,
    required this.retentionDays,
    required this.snapshotId,
    required this.snapshotName,
    required this.snapshotSn,
    required this.snapshotType,
    required this.sourceDiskId,
    required this.sourceDiskSize,
    required this.sourceDiskType,
    required this.sourceStorageType,
    required this.status,
    required this.tags,
    required this.type,
    required this.usage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'creationTime': creationTime,
      'description': description,
      'diskId': diskId,
      'encrypted': encrypted,
      'id': id,
      'instantAccess': instantAccess,
      'instantAccessRetentionDays': instantAccessRetentionDays,
      'name': name,
      'productCode': productCode,
      'progress': progress,
      'remainTime': remainTime,
      'resourceGroupId': resourceGroupId,
      'retentionDays': retentionDays,
      'snapshotId': snapshotId,
      'snapshotName': snapshotName,
      'snapshotSn': snapshotSn,
      'snapshotType': snapshotType,
      'sourceDiskId': sourceDiskId,
      'sourceDiskSize': sourceDiskSize,
      'sourceDiskType': sourceDiskType,
      'sourceStorageType': sourceStorageType,
      'status': status,
      'tags': tags,
      'type': type,
      'usage': usage,
    };
  }

  factory GetSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetSnapshotsSnapshot(
      category: pulumi.Input.fromValue(map['category'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instantAccess: pulumi.Input.fromValue(map['instantAccess'] as bool),
      instantAccessRetentionDays: pulumi.Input.fromValue(
        map['instantAccessRetentionDays'] as int,
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      productCode: pulumi.Input.fromValue(map['productCode'] as String),
      progress: pulumi.Input.fromValue(map['progress'] as String),
      remainTime: pulumi.Input.fromValue(map['remainTime'] as int),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      retentionDays: pulumi.Input.fromValue(map['retentionDays'] as int),
      snapshotId: pulumi.Input.fromValue(map['snapshotId'] as String),
      snapshotName: pulumi.Input.fromValue(map['snapshotName'] as String),
      snapshotSn: pulumi.Input.fromValue(map['snapshotSn'] as String),
      snapshotType: pulumi.Input.fromValue(map['snapshotType'] as String),
      sourceDiskId: pulumi.Input.fromValue(map['sourceDiskId'] as String),
      sourceDiskSize: pulumi.Input.fromValue(map['sourceDiskSize'] as String),
      sourceDiskType: pulumi.Input.fromValue(map['sourceDiskType'] as String),
      sourceStorageType: pulumi.Input.fromValue(
        map['sourceStorageType'] as String,
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      usage: pulumi.Input.fromValue(map['usage'] as String),
    );
  }
}
