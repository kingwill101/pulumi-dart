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
      category: (map['category'] as String).input(),
      creationTime: (map['creationTime'] as String).input(),
      description: (map['description'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      encrypted: (map['encrypted'] as bool).input(),
      id: (map['id'] as String).input(),
      instantAccess: (map['instantAccess'] as bool).input(),
      instantAccessRetentionDays: (map['instantAccessRetentionDays'] as int).input(),
      name: (map['name'] as String).input(),
      productCode: (map['productCode'] as String).input(),
      progress: (map['progress'] as String).input(),
      remainTime: (map['remainTime'] as int).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      retentionDays: (map['retentionDays'] as int).input(),
      snapshotId: (map['snapshotId'] as String).input(),
      snapshotName: (map['snapshotName'] as String).input(),
      snapshotSn: (map['snapshotSn'] as String).input(),
      snapshotType: (map['snapshotType'] as String).input(),
      sourceDiskId: (map['sourceDiskId'] as String).input(),
      sourceDiskSize: (map['sourceDiskSize'] as String).input(),
      sourceDiskType: (map['sourceDiskType'] as String).input(),
      sourceStorageType: (map['sourceStorageType'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
      usage: (map['usage'] as String).input(),
    );
  }
}

