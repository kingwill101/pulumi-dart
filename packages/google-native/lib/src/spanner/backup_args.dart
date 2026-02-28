// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_spanner_v1_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_backup_args_doc}
class BackupArgs {
  /// Required. The id of the backup to be created. The `backup_id` appended to `parent` forms the full backup name of the form `projects//instances//backups/`.
  final pulumi.Input<String> backupId;
  /// Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.
  final pulumi.Input<String>? database;
  /// Required. The encryption type of the backup.
  final pulumi.Input<String> encryptionConfigEncryptionType;
  /// Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  final pulumi.Input<String>? encryptionConfigKmsKeyName;
  /// Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
  final pulumi.Input<String>? expireTime;
  final pulumi.Input<String> instanceId;
  /// Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.
  final pulumi.Input<String>? versionTime;

  /// Creates a new [BackupArgs].
  /// [backupId] Required. The id of the backup to be created. The `backup_id` appended to `parent` forms the full backup name of the form `projects//instances//backups/`.
  /// [database] Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.
  /// [encryptionConfigEncryptionType] Required. The encryption type of the backup.
  /// [encryptionConfigKmsKeyName] Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  /// [expireTime] Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
  /// [instanceId] Required.
  /// [name] Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.
  /// [project] Optional.
  /// [versionTime] The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.
  BackupArgs({
    required String backupId,
    String? database,
    required String encryptionConfigEncryptionType,
    String? encryptionConfigKmsKeyName,
    String? expireTime,
    required String instanceId,
    String? name,
    String? project,
    String? versionTime,
  }) :
      backupId = pulumi.Input.asInput<String>(backupId),
      database = pulumi.Input.asOptionalInput<String>(database),
      encryptionConfigEncryptionType = pulumi.Input.asInput<String>(encryptionConfigEncryptionType),
      encryptionConfigKmsKeyName = pulumi.Input.asOptionalInput<String>(encryptionConfigKmsKeyName),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionTime = pulumi.Input.asOptionalInput<String>(versionTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': backupId,
      'database': ?database,
      'encryptionConfigEncryptionType': encryptionConfigEncryptionType,
      'encryptionConfigKmsKeyName': ?encryptionConfigKmsKeyName,
      'expireTime': ?expireTime,
      'instanceId': instanceId,
      'name': ?name,
      'project': ?project,
      'versionTime': ?versionTime,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupId: map['backupId'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      encryptionConfigEncryptionType: map['encryptionConfigEncryptionType'] as String,
      encryptionConfigKmsKeyName: map['encryptionConfigKmsKeyName'] == null ? null : map['encryptionConfigKmsKeyName'] as String,
      expireTime: map['expireTime'] == null ? null : map['expireTime'] as String,
      instanceId: map['instanceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      versionTime: map['versionTime'] == null ? null : map['versionTime'] as String,
    );
  }
}

