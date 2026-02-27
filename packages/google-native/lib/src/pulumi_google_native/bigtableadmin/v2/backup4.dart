import 'package:pulumi/pulumi.dart' hide Config;
import 'backup_args4.dart';
import 'encryption_info_response4.dart';

/// Starts creating a new Cloud Bigtable Backup. The returned backup long-running operation can be used to track creation of the backup. The metadata field type is CreateBackupMetadata. The response field type is Backup, if successful. Cancelling the returned operation will stop the creation and delete the backup.
/// Auto-naming is currently not supported for this resource.
class Backup4 extends CustomResource {
  /// Required. The id of the backup to be created. The `backup_id` along with the parent `parent` are combined as {parent}/backups/{backup_id} to create the full backup name, of the form: `projects/{project}/instances/{instance}/clusters/{cluster}/backups/{backup_id}`. This string must be between 1 and 50 characters in length and match the regex _a-zA-Z0-9*.
  late final Output<String> backupId;
  late final Output<String> clusterId;

  /// The encryption information for the backup.
  late final Output<EncryptionInfoResponse4> encryptionInfo;

  /// `end_time` is the time that the backup was finished. The row data in the backup will be no newer than this timestamp.
  late final Output<String> endTime;

  /// The expiration time of the backup, with microseconds granularity that must be at least 6 hours and at most 90 days from the time the request is received. Once the `expire_time` has passed, Cloud Bigtable will delete the backup and free the resources used by the backup.
  late final Output<String> expireTime;
  late final Output<String> instanceId;

  /// A globally unique identifier for the backup which cannot be changed. Values are of the form `projects/{project}/instances/{instance}/clusters/{cluster}/ backups/_a-zA-Z0-9*` The final segment of the name must be between 1 and 50 characters in length. The backup is stored in the cluster identified by the prefix of the backup name of the form `projects/{project}/instances/{instance}/clusters/{cluster}`.
  late final Output<String> name;
  late final Output<String> project;

  /// Size of the backup in bytes.
  late final Output<String> sizeBytes;

  /// Name of the backup from which this backup was copied. If a backup is not created by copying a backup, this field will be empty. Values are of the form: projects//instances//backups/.
  late final Output<String> sourceBackup;

  /// Immutable. Name of the table from which this backup was created. This needs to be in the same instance as the backup. Values are of the form `projects/{project}/instances/{instance}/tables/{source_table}`.
  late final Output<String> sourceTable;

  /// `start_time` is the time that the backup was started (i.e. approximately the time the CreateBackup request is received). The row data in this backup will be no older than this timestamp.
  late final Output<String> startTime;

  /// The current state of the backup.
  late final Output<String> state;

  Backup4(
    String name, {
    BackupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:bigtableadmin/v2:Backup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.clusterId = registerOutput<String>('clusterId');
    this.encryptionInfo =
        registerOutput<EncryptionInfoResponse4>('encryptionInfo');
    this.endTime = registerOutput<String>('endTime');
    this.expireTime = registerOutput<String>('expireTime');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.sourceBackup = registerOutput<String>('sourceBackup');
    this.sourceTable = registerOutput<String>('sourceTable');
    this.startTime = registerOutput<String>('startTime');
    this.state = registerOutput<String>('state');
  }
}
