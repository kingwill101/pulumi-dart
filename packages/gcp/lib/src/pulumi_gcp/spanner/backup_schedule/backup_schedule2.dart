import 'package:pulumi/pulumi.dart';
import '../backup_schedule_encryption_config/backup_schedule_encryption_config.dart';
import '../backup_schedule_spec/backup_schedule_spec.dart';
import 'backup_schedule_args2.dart';

/// A backup schedule for a Cloud Spanner Database.
/// This resource is owned by the database it is backing up, and is deleted along with the database.
/// The actual backups are not though.
///
///
/// To get more information about BackupSchedule, see:
///
/// * [API documentation](https://cloud.google.com/spanner/docs/reference/rest/v1/projects.instances.databases.backupSchedules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/spanner/docs/backup)
///
/// > **Warning:** This resource creates a Spanner Backup Schedule on a project that already has
/// a Spanner database.
/// This resource is owned by the database it is backing up, and is deleted along
/// with the database. The actual backups are not though.
///
/// ## Example Usage
///
/// ### Spanner Backup Schedule Daily Full
///
///
///
/// ### Spanner Backup Schedule Daily Incremental
///
///
///
///
/// ## Import
///
/// BackupSchedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/instances/{{instance}}/databases/{{database}}/backupSchedules/{{name}}`
///
/// * `{{project}}/{{instance}}/{{database}}/{{name}}`
///
/// * `{{instance}}/{{database}}/{{name}}`
///
/// When using the `pulumi import` command, BackupSchedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:spanner/backupSchedule:BackupSchedule default projects/{{project}}/instances/{{instance}}/databases/{{database}}/backupSchedules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/backupSchedule:BackupSchedule default {{project}}/{{instance}}/{{database}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:spanner/backupSchedule:BackupSchedule default {{instance}}/{{database}}/{{name}}
/// ```
class BackupSchedule2 extends CustomResource {
  /// The database to create the backup schedule on.
  late final Output<String> database;

  /// Configuration for the encryption of the backup schedule.
  /// Structure is documented below.
  late final Output<BackupScheduleEncryptionConfig> encryptionConfig;

  /// The schedule creates only full backups..
  late final Output<Map<String, dynamic>?> fullBackupSpec;

  /// The schedule creates incremental backup chains.
  late final Output<Map<String, dynamic>?> incrementalBackupSpec;

  /// The instance to create the database on.
  late final Output<String> instance;

  /// A unique identifier for the backup schedule, which cannot be changed after
  /// the backup schedule is created. Values are of the form [a-z][-a-z0-9]*[a-z0-9].
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: '3.5s'.
  /// You can set this to a value up to 366 days.
  late final Output<String> retentionDuration;

  /// Defines specifications of the backup schedule.
  /// Structure is documented below.
  late final Output<BackupScheduleSpec?> spec;

  BackupSchedule2(
    String name, {
    BackupScheduleArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:spanner/backupSchedule:BackupSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.database = registerOutput<String>('database');
    this.encryptionConfig =
        registerOutput<BackupScheduleEncryptionConfig>('encryptionConfig');
    this.fullBackupSpec =
        registerOutput<Map<String, dynamic>?>('fullBackupSpec');
    this.incrementalBackupSpec =
        registerOutput<Map<String, dynamic>?>('incrementalBackupSpec');
    this.instance = registerOutput<String>('instance');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.retentionDuration = registerOutput<String>('retentionDuration');
    this.spec = registerOutput<BackupScheduleSpec?>('spec');
  }
}
