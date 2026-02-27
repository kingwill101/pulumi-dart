import 'package:pulumi/pulumi.dart' hide Config;
import 'backup_args14.dart';
import 'encryption_info_response5.dart';

/// Starts creating a new Cloud Spanner Backup. The returned backup long-running operation will have a name of the format `projects//instances//backups//operations/` and can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup. There can be only one pending backup creation per database. Backup creation of different databases can run concurrently.
class Backup14 extends CustomResource {
  /// Required. The id of the backup to be created. The `backup_id` appended to `parent` forms the full backup name of the form `projects//instances//backups/`.
  late final Output<String> backupId;

  /// The time the CreateBackup request is received. If the request does not specify `version_time`, the `version_time` of the backup will be equivalent to the `create_time`.
  late final Output<String> createTime;

  /// Required for the CreateBackup operation. Name of the database from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects//instances//databases/`.
  late final Output<String> database;

  /// The database dialect information for the backup.
  late final Output<String> databaseDialect;

  /// Required. The encryption type of the backup.
  late final Output<String> encryptionConfigEncryptionType;

  /// Optional. The Cloud KMS key that will be used to protect the backup. This field should be set only when encryption_type is `CUSTOMER_MANAGED_ENCRYPTION`. Values are of the form `projects//locations//keyRings//cryptoKeys/`.
  late final Output<String?> encryptionConfigKmsKeyName;

  /// The encryption information for the backup.
  late final Output<EncryptionInfoResponse5> encryptionInfo;

  /// Required for the CreateBackup operation. The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 366 days from the time the CreateBackup request is processed. Once the `expire_time` has passed, the backup is eligible to be automatically deleted by Cloud Spanner to free the resources used by the backup.
  late final Output<String> expireTime;
  late final Output<String> instanceId;

  /// The max allowed expiration time of the backup, with microseconds granularity. A backup's expiration time can be configured in multiple APIs: CreateBackup, UpdateBackup, CopyBackup. When updating or copying an existing backup, the expiration time specified must be less than `Backup.max_expire_time`.
  late final Output<String> maxExpireTime;

  /// Output only for the CreateBackup operation. Required for the UpdateBackup operation. A globally unique identifier for the backup which cannot be changed. Values are of the form `projects//instances//backups/a-z*[a-z0-9]` The final segment of the name must be between 2 and 60 characters in length. The backup is stored in the location(s) specified in the instance configuration of the instance containing the backup, identified by the prefix of the backup name of the form `projects//instances/`.
  late final Output<String> name;
  late final Output<String> project;

  /// The names of the destination backups being created by copying this source backup. The backup names are of the form `projects//instances//backups/`. Referencing backups may exist in different instances. The existence of any referencing backup prevents the backup from being deleted. When the copy operation is done (either successfully completed or cancelled or the destination backup is deleted), the reference to the backup is removed.
  late final Output<List<String>> referencingBackups;

  /// The names of the restored databases that reference the backup. The database names are of the form `projects//instances//databases/`. Referencing databases may exist in different instances. The existence of any referencing database prevents the backup from being deleted. When a restored database from the backup enters the `READY` state, the reference to the backup is removed.
  late final Output<List<String>> referencingDatabases;

  /// Size of the backup in bytes.
  late final Output<String> sizeBytes;

  /// The current state of the backup.
  late final Output<String> state;

  /// The backup will contain an externally consistent copy of the database at the timestamp specified by `version_time`. If `version_time` is not specified, the system will set `version_time` to the `create_time` of the backup.
  late final Output<String> versionTime;

  Backup14(
    String name, {
    BackupArgs14? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:spanner/v1:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String>('database');
    this.databaseDialect = registerOutput<String>('databaseDialect');
    this.encryptionConfigEncryptionType =
        registerOutput<String>('encryptionConfigEncryptionType');
    this.encryptionConfigKmsKeyName =
        registerOutput<String?>('encryptionConfigKmsKeyName');
    this.encryptionInfo =
        registerOutput<EncryptionInfoResponse5>('encryptionInfo');
    this.expireTime = registerOutput<String>('expireTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.maxExpireTime = registerOutput<String>('maxExpireTime');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.referencingBackups =
        registerOutput<List<String>>('referencingBackups');
    this.referencingDatabases =
        registerOutput<List<String>>('referencingDatabases');
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.state = registerOutput<String>('state');
    this.versionTime = registerOutput<String>('versionTime');
  }
}
