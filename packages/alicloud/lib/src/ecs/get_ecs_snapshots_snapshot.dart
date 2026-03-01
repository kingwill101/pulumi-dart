// ignore_for_file: unused_element, unnecessary_cast


class GetEcsSnapshotsSnapshot {
  /// The category of the snapshot. Valid Values: `flash` and `standard`.
  final String category;
  /// The time when the snapshot was created.
  final String creationTime;
  /// The description of the snapshot.
  final String description;
  /// The ID of the source disk.
  final String diskId;
  /// Specifies whether the snapshot is encrypted.
  final bool encrypted;
  /// The ID of the Snapshot.
  final String id;
  /// Indicates whether the instant access feature is enabled.
  final bool instantAccess;
  /// Indicates the validity period of the instant access feature.
  final int instantAccessRetentionDays;
  /// The name of the snapshot.
  final String name;
  /// The product code of the Alibaba Cloud Marketplace image.
  final String productCode;
  /// The progress of the snapshot creation task.
  final String progress;
  /// The amount of remaining time required to create the snapshot.
  final int remainTime;
  /// The resource group id.
  final String resourceGroupId;
  /// The retention period of the automatic snapshot.
  final int retentionDays;
  /// The ID of the snapshot.
  final String snapshotId;
  /// The name of the snapshot.
  final String snapshotName;
  /// The serial number of the snapshot.
  final String snapshotSn;
  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final String snapshotType;
  /// The ID of the source disk.
  final String sourceDiskId;
  /// The capacity of the source disk.
  final String sourceDiskSize;
  /// The type of the disk for which the snapshot was created. Valid Values: `System`, `Data`.
  final String sourceDiskType;
  /// The category of the source disk.
  final String sourceStorageType;
  /// The status of the snapshot. Valid Values: `accomplished`, `failed`, `progressing` and `all`.
  final String status;
  /// A mapping of tags to assign to the snapshot.
  final Map<String, String> tags;
  /// The type of the snapshot. Valid Values: `auto`, `user` and `all`. Default to: `all`.
  final String type;
  /// A resource type that has a reference relationship. Valid Values: `image`, `disk`, `image_disk` and `none`.
  final String usage;

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
      category: map['category'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      diskId: map['diskId'] as String,
      encrypted: map['encrypted'] as bool,
      id: map['id'] as String,
      instantAccess: map['instantAccess'] as bool,
      instantAccessRetentionDays: map['instantAccessRetentionDays'] as int,
      name: map['name'] as String,
      productCode: map['productCode'] as String,
      progress: map['progress'] as String,
      remainTime: map['remainTime'] as int,
      resourceGroupId: map['resourceGroupId'] as String,
      retentionDays: map['retentionDays'] as int,
      snapshotId: map['snapshotId'] as String,
      snapshotName: map['snapshotName'] as String,
      snapshotSn: map['snapshotSn'] as String,
      snapshotType: map['snapshotType'] as String,
      sourceDiskId: map['sourceDiskId'] as String,
      sourceDiskSize: map['sourceDiskSize'] as String,
      sourceDiskType: map['sourceDiskType'] as String,
      sourceStorageType: map['sourceStorageType'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      usage: map['usage'] as String,
    );
  }
}

