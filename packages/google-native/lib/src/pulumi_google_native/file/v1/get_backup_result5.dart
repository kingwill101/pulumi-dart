// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getBackup.
class GetBackupResult5 {
  /// Capacity of the source file share when the backup was created.
  final String capacityGb;

  /// The time when the backup was created.
  final String createTime;

  /// A description of the backup with 2048 characters or less. Requests with longer descriptions will be rejected.
  final String description;

  /// Amount of bytes that will be downloaded if the backup is restored. This may be different than storage bytes, since sequential backups of the same disk will share storage.
  final String downloadBytes;

  /// Immutable. KMS key name used for data encryption.
  final String kmsKey;

  /// Resource labels to represent user provided metadata.
  final Map<String, String> labels;

  /// The resource name of the backup, in the format `projects/{project_number}/locations/{location_id}/backups/{backup_id}`.
  final String name;

  /// Reserved for future use.
  final bool satisfiesPzs;

  /// Name of the file share in the source Filestore instance that the backup is created from.
  final String sourceFileShare;

  /// The resource name of the source Filestore instance, in the format `projects/{project_number}/locations/{location_id}/instances/{instance_id}`, used to create this backup.
  final String sourceInstance;

  /// The service tier of the source Filestore instance that this backup is created from.
  final String sourceInstanceTier;

  /// The backup state.
  final String state;

  /// The size of the storage used by the backup. As backups share storage, this number is expected to change with backup creation/deletion.
  final String storageBytes;

  GetBackupResult5({
    required this.capacityGb,
    required this.createTime,
    required this.description,
    required this.downloadBytes,
    required this.kmsKey,
    required this.labels,
    required this.name,
    required this.satisfiesPzs,
    required this.sourceFileShare,
    required this.sourceInstance,
    required this.sourceInstanceTier,
    required this.state,
    required this.storageBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['capacityGb'] = capacityGb;
    map['createTime'] = createTime;
    map['description'] = description;
    map['downloadBytes'] = downloadBytes;
    map['kmsKey'] = kmsKey;
    map['labels'] = labels;
    map['name'] = name;
    map['satisfiesPzs'] = satisfiesPzs;
    map['sourceFileShare'] = sourceFileShare;
    map['sourceInstance'] = sourceInstance;
    map['sourceInstanceTier'] = sourceInstanceTier;
    map['state'] = state;
    map['storageBytes'] = storageBytes;
    return map;
  }

  factory GetBackupResult5.fromMap(Map<String, dynamic> map) {
    return GetBackupResult5(
      capacityGb: map['capacityGb'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      downloadBytes: map['downloadBytes'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      satisfiesPzs: map['satisfiesPzs'] as bool,
      sourceFileShare: map['sourceFileShare'] as String,
      sourceInstance: map['sourceInstance'] as String,
      sourceInstanceTier: map['sourceInstanceTier'] as String,
      state: map['state'] as String,
      storageBytes: map['storageBytes'] as String,
    );
  }
}
