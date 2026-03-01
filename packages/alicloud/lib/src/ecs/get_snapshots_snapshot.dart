// ignore_for_file: unused_element, unnecessary_cast


class GetSnapshotsSnapshot {
  final String category;
  /// Creation time. Time of creation. It is represented according to ISO8601, and UTC time is used. Format: YYYY-MM-DDThh:mmZ.
  final String creationTime;
  /// Description of the snapshot.
  final String description;
  final String diskId;
  /// Whether the snapshot is encrypted or not.
  final bool encrypted;
  /// ID of the snapshot.
  final String id;
  final bool instantAccess;
  final int instantAccessRetentionDays;
  /// Name of the snapshot.
  final String name;
  /// Product code on the image market place.
  final String productCode;
  /// Progress of snapshot creation, presented in percentage.
  final String progress;
  /// The remaining time of a snapshot creation task, in seconds.
  final int remainTime;
  final String resourceGroupId;
  /// The number of days that an automatic snapshot retains in the console for your instance.
  final int retentionDays;
  final String snapshotId;
  final String snapshotName;
  final String snapshotSn;
  final String snapshotType;
  /// Source disk ID, which is retained after the source disk of the snapshot is deleted.
  final String sourceDiskId;
  /// Size of the source disk, measured in GB.
  final String sourceDiskSize;
  /// Source disk attribute. Value range: `System`,`Data`.
  final String sourceDiskType;
  final String sourceStorageType;
  /// The snapshot status. Value range: `progressing`, `accomplished` and `failed`.
  final String status;
  /// A map of tags assigned to the snapshot.
  final Map<String, String> tags;
  final String type;
  /// Whether the snapshots are used to create resources or not. Value range: `image`, `disk`, `image_disk` and `none`.
  final String usage;

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

