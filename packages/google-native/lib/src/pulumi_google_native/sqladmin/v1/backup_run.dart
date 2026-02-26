import 'package:pulumi/pulumi.dart';
import 'backup_run_args.dart';
import 'disk_encryption_configuration_response.dart';
import 'disk_encryption_status_response.dart';
import 'operation_error_response4.dart';

/// Creates a new backup run on demand.
/// Auto-naming is currently not supported for this resource.
class BackupRun extends CustomResource {
  /// Specifies the kind of backup, PHYSICAL or DEFAULT_SNAPSHOT.
  late final Output<String> backupKind;

  /// The description of this run, only applicable to on-demand backups.
  late final Output<String> description;

  /// Encryption configuration specific to a backup.
  late final Output<DiskEncryptionConfigurationResponse>
      diskEncryptionConfiguration;

  /// Encryption status specific to a backup.
  late final Output<DiskEncryptionStatusResponse> diskEncryptionStatus;

  /// The time the backup operation completed in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final Output<String> endTime;

  /// The time the run was enqueued in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final Output<String> enqueuedTime;

  /// Information about why the backup operation failed. This is only present if the run has the FAILED status.
  late final Output<OperationErrorResponse4> error;
  late final Output<String> instance;

  /// This is always `sql#backupRun`.
  late final Output<String> kind;

  /// Location of the backups.
  late final Output<String> location;
  late final Output<String> project;

  /// The URI of this resource.
  late final Output<String> selfLink;

  /// The time the backup operation actually started in UTC timezone in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final Output<String> startTime;

  /// The status of this run.
  late final Output<String> status;

  /// Backup time zone to prevent restores to an instance with a different time zone. Now relevant only for SQL Server.
  late final Output<String> timeZone;

  /// The type of this run; can be either "AUTOMATED" or "ON_DEMAND" or "FINAL". This field defaults to "ON_DEMAND" and is ignored, when specified for insert requests.
  late final Output<String> type;

  /// The start time of the backup window during which this the backup was attempted in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final Output<String> windowStartTime;

  BackupRun(
    String name, {
    BackupRunArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1:BackupRun',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupKind = registerOutput<String>('backupKind');
    this.description = registerOutput<String>('description');
    this.diskEncryptionConfiguration =
        registerOutput<DiskEncryptionConfigurationResponse>(
            'diskEncryptionConfiguration');
    this.diskEncryptionStatus =
        registerOutput<DiskEncryptionStatusResponse>('diskEncryptionStatus');
    this.endTime = registerOutput<String>('endTime');
    this.enqueuedTime = registerOutput<String>('enqueuedTime');
    this.error = registerOutput<OperationErrorResponse4>('error');
    this.instance = registerOutput<String>('instance');
    this.kind = registerOutput<String>('kind');
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.startTime = registerOutput<String>('startTime');
    this.status = registerOutput<String>('status');
    this.timeZone = registerOutput<String>('timeZone');
    this.type = registerOutput<String>('type');
    this.windowStartTime = registerOutput<String>('windowStartTime');
  }
}
