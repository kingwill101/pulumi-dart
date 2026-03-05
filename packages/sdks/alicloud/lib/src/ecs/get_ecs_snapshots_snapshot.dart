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
      category: pulumi.Input.fromValue(map['category'] as String),
      creationTime: pulumi.Input.fromValue(map['creationTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      encrypted: pulumi.Input.fromValue(map['encrypted'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instantAccess: pulumi.Input.fromValue(map['instantAccess'] as bool),
      instantAccessRetentionDays: pulumi.Input.fromValue(map['instantAccessRetentionDays'] as int),
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
      sourceStorageType: pulumi.Input.fromValue(map['sourceStorageType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
      usage: pulumi.Input.fromValue(map['usage'] as String),
    );
  }
}

