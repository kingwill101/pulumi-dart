import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_schedule_weekly_recurrence/backup_schedule_weekly_recurrence.dart';
import 'backup_schedule_args.dart';

/// A backup schedule for a Cloud Firestore Database.
/// This resource is owned by the database it is backing up, and is deleted along with the database.
/// The actual backups are not though.
///
///
/// To get more information about BackupSchedule, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.backupSchedules)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/backups)
///
/// > **Warning:** This resource creates a Firestore Backup Schedule on a project that already has
/// a Firestore database.
/// This resource is owned by the database it is backing up, and is deleted along
/// with the database. The actual backups are not though.
///
/// ## Example Usage
///
/// ### Firestore Backup Schedule Daily
///
///
///
/// ### Firestore Backup Schedule Weekly
///
///
///
///
/// ## Import
///
/// BackupSchedule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/databases/{{database}}/backupSchedules/{{name}}`
///
/// * `{{project}}/{{database}}/{{name}}`
///
/// * `{{database}}/{{name}}`
///
/// When using the `pulumi import` command, BackupSchedule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/backupSchedule:BackupSchedule default projects/{{project}}/databases/{{database}}/backupSchedules/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/backupSchedule:BackupSchedule default {{project}}/{{database}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firestore/backupSchedule:BackupSchedule default {{database}}/{{name}}
/// ```
class BackupSchedule extends pulumi.CustomResource {
  /// For a schedule that runs daily.
  late final pulumi.Output<Map<String, dynamic>?> dailyRecurrence;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;

  /// The unique backup schedule identifier across all locations and databases for the given project. Format:
  /// `projects/{{project}}/databases/{{database}}/backupSchedules/{{backupSchedule}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  /// You can set this to a value up to 14 weeks.
  late final pulumi.Output<String> retention;

  /// For a schedule that runs weekly on a specific day.
  /// Structure is documented below.
  late final pulumi.Output<BackupScheduleWeeklyRecurrence?> weeklyRecurrence;

  BackupSchedule(
    String name, {
    BackupScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/backupSchedule:BackupSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dailyRecurrence =
        registerOutput<Map<String, dynamic>?>('dailyRecurrence');
    this.database = registerOutput<String?>('database');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.retention = registerOutput<String>('retention');
    this.weeklyRecurrence =
        registerOutput<BackupScheduleWeeklyRecurrence?>('weeklyRecurrence');
  }
}
