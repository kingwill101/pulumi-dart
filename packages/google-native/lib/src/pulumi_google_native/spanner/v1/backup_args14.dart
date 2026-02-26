// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Backup.
class BackupArgs14 {
  /// Required. The id of the backup to be created. The `backup_id` appended to `parent` forms the full backup name of the form `projects//instances//backups/`.
  final Input<String> backupId;

  /// Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.
  final Input<String>? database;

  /// Required. The encryption type of the backup.
  final Input<String> encryptionConfigEncryptionType;

  /// Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  final Input<String>? encryptionConfigKmsKeyName;

  /// Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
  final Input<String>? expireTime;
  final Input<String> instanceId;

  /// Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.
  final Input<String>? name;
  final Input<String>? project;

  /// The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.
  final Input<String>? versionTime;

  BackupArgs14({
    required this.backupId,
    this.database,
    required this.encryptionConfigEncryptionType,
    this.encryptionConfigKmsKeyName,
    this.expireTime,
    required this.instanceId,
    this.name,
    this.project,
    this.versionTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupId'] = backupId;
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue;
    }
    map['encryptionConfigEncryptionType'] = encryptionConfigEncryptionType;
    final encryptionConfigKmsKeyNameValue = encryptionConfigKmsKeyName;
    if (encryptionConfigKmsKeyNameValue != null) {
      map['encryptionConfigKmsKeyName'] = encryptionConfigKmsKeyNameValue;
    }
    final expireTimeValue = expireTime;
    if (expireTimeValue != null) {
      map['expireTime'] = expireTimeValue;
    }
    map['instanceId'] = instanceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final versionTimeValue = versionTime;
    if (versionTimeValue != null) {
      map['versionTime'] = versionTimeValue;
    }
    return map;
  }

  factory BackupArgs14.fromMap(Map<String, dynamic> map) {
    return BackupArgs14(
      backupId: Input.asInput<String>(map['backupId']),
      database: Input.asOptionalInput<String>(map['database']),
      encryptionConfigEncryptionType:
          Input.asInput<String>(map['encryptionConfigEncryptionType']),
      encryptionConfigKmsKeyName:
          Input.asOptionalInput<String>(map['encryptionConfigKmsKeyName']),
      expireTime: Input.asOptionalInput<String>(map['expireTime']),
      instanceId: Input.asInput<String>(map['instanceId']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      versionTime: Input.asOptionalInput<String>(map['versionTime']),
    );
  }
}
