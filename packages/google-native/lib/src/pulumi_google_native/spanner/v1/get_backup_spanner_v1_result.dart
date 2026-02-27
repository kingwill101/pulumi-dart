// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_info_response_spanner_v1.dart';

/// Result data returned by getBackup.
class GetBackupSpannerV1Result {
  /// The time the CreateBackup request is received. If the request does not specify `version_time`, the `version_time` of the backup will be equivalent to the `create_time`.
  final String createTime;

  /// Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.
  final String database;

  /// The database dialect information for the backup.
  final String databaseDialect;

  /// The encryption information for the backup.
  final EncryptionInfoResponseSpannerV1 encryptionInfo;

  /// Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
  final String expireTime;

  /// The max allowed expiration time of the backup, with microseconds granularity. A backup's expiration time can be configured in multiple APIs: CreateBackup, UpdateBackup, CopyBackup. When updating or copying an existing backup, the expiration time specified must be less than `Backup.max_expire_time`.
  final String maxExpireTime;

  /// Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.
  final String name;

  /// The names of the destination backups being created by copying this source backup. The backup names are of the form `projects//instances//backups/`. Referencing backups may exist in different instances. The existence of any referencing backup prevents the backup from being deleted. When the copy operation is done (either successfully completed or cancelled or the destination backup is deleted), the reference to the backup is removed.
  final List<String> referencingBackups;

  /// The names of the restored databases that reference the backup. The database names are of the form `projects//instances//databases/`. Referencing databases may exist in different instances. The existence of any referencing database prevents the backup from being deleted. When a restored database from the backup enters the `READY` state, the reference to the backup is removed.
  final List<String> referencingDatabases;

  /// Size of the backup in bytes.
  final String sizeBytes;

  /// The current state of the backup.
  final String state;

  /// The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.
  final String versionTime;

  GetBackupSpannerV1Result({
    required this.createTime,
    required this.database,
    required this.databaseDialect,
    required this.encryptionInfo,
    required this.expireTime,
    required this.maxExpireTime,
    required this.name,
    required this.referencingBackups,
    required this.referencingDatabases,
    required this.sizeBytes,
    required this.state,
    required this.versionTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['database'] = database;
    map['databaseDialect'] = databaseDialect;
    map['encryptionInfo'] = encryptionInfo.toMap();
    map['expireTime'] = expireTime;
    map['maxExpireTime'] = maxExpireTime;
    map['name'] = name;
    map['referencingBackups'] = referencingBackups;
    map['referencingDatabases'] = referencingDatabases;
    map['sizeBytes'] = sizeBytes;
    map['state'] = state;
    map['versionTime'] = versionTime;
    return map;
  }

  factory GetBackupSpannerV1Result.fromMap(Map<String, dynamic> map) {
    return GetBackupSpannerV1Result(
      createTime: map['createTime'] as String,
      database: map['database'] as String,
      databaseDialect: map['databaseDialect'] as String,
      encryptionInfo: EncryptionInfoResponseSpannerV1.fromMap(
          (map['encryptionInfo'] as Map).cast<String, dynamic>()),
      expireTime: map['expireTime'] as String,
      maxExpireTime: map['maxExpireTime'] as String,
      name: map['name'] as String,
      referencingBackups: (map['referencingBackups'] as List).cast<String>(),
      referencingDatabases:
          (map['referencingDatabases'] as List).cast<String>(),
      sizeBytes: map['sizeBytes'] as String,
      state: map['state'] as String,
      versionTime: map['versionTime'] as String,
    );
  }
}
