// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsSnapshotsSnapshot {
  /// The category of the snapshot. Valid Values: `flash` and `standard`.
  final pulumi.Input<String> category;
  /// The time when the snapshot was created.
  final pulumi.Input<String> creationTime;
  /// The description of the snapshot.
  final pulumi.Input<String> description;
  /// The ID of the source disk.
  final pulumi.Input<String> diskId;
  /// Specifies whether the snapshot is encrypted.
  final pulumi.Input<bool> encrypted;
  /// The ID of the Snapshot.
  final pulumi.Input<String> id;
  /// Indicates whether the instant access feature is enabled.
  final pulumi.Input<bool> instantAccess;
  /// Indicates the validity period of the instant access feature.
  final pulumi.Input<int> instantAccessRetentionDays;
  /// The name of the snapshot.
  final pulumi.Input<String> name;
  /// The product code of the Alibaba Cloud Marketplace image.
  final pulumi.Input<String> productCode;
  /// The progress of the snapshot creation task.
  final pulumi.Input<String> progress;
  /// The amount of remaining time required to create the snapshot.
  final pulumi.Input<int> remainTime;
  /// The resource group id.
  final pulumi.Input<String> resourceGroupId;
  /// The retention period of the automatic snapshot.
  final pulumi.Input<int> retentionDays;
  /// The ID of the snapshot.
  final pulumi.Input<String> snapshotId;
  /// The name of the snapshot.
  final pulumi.Input<String> snapshotName;
  /// The serial number of the snapshot.
  final pulumi.Input<String> snapshotSn;
  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final pulumi.Input<String> snapshotType;
  /// The ID of the source disk.
  final pulumi.Input<String> sourceDiskId;
  /// The capacity of the source disk.
  final pulumi.Input<String> sourceDiskSize;
  /// The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  final pulumi.Input<String> sourceDiskType;
  /// The category of the source disk.
  final pulumi.Input<String> sourceStorageType;
  /// The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the snapshot.
  final pulumi.Input<Map<String, String>> tags;
  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final pulumi.Input<String> type;
  /// A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  final pulumi.Input<String> usage;

  /// Creates a new [GetEcsSnapshotsSnapshot].
  /// [category] The category of the snapshot. Valid Values: `flash` and `standard`.
  /// [creationTime] The time when the snapshot was created.
  /// [description] The description of the snapshot.
  /// [diskId] The ID of the source disk.
  /// [encrypted] Specifies whether the snapshot is encrypted.
  /// [id] The ID of the Snapshot.
  /// [instantAccess] Indicates whether the instant access feature is enabled.
  /// [instantAccessRetentionDays] Indicates the validity period of the instant access feature.
  /// [name] The name of the snapshot.
  /// [productCode] The product code of the Alibaba Cloud Marketplace image.
  /// [progress] The progress of the snapshot creation task.
  /// [remainTime] The amount of remaining time required to create the snapshot.
  /// [resourceGroupId] The resource group id.
  /// [retentionDays] The retention period of the automatic snapshot.
  /// [snapshotId] The ID of the snapshot.
  /// [snapshotName] The name of the snapshot.
  /// [snapshotSn] The serial number of the snapshot.
  /// [snapshotType] The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  /// [sourceDiskId] The ID of the source disk.
  /// [sourceDiskSize] The capacity of the source disk.
  /// [sourceDiskType] The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  /// [sourceStorageType] The category of the source disk.
  /// [status] The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  /// [tags] A mapping of tags to assign to the snapshot.
  /// [type] The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  /// [usage] A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  GetEcsSnapshotsSnapshot({
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

  factory GetEcsSnapshotsSnapshot.fromMap(Map<String, dynamic> map) {
    return GetEcsSnapshotsSnapshot(
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

