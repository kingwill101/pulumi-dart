import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_schedule_args.dart';
import 'google_firestore_admin_v1_weekly_recurrence_response.dart';

/// Creates a backup schedule on a database. At most two backup schedules can be configured on a database, one daily backup schedule with retention up to 7 days and one weekly backup schedule with retention up to 14 weeks.
/// Auto-naming is currently not supported for this resource.
class BackupSchedule extends pulumi.CustomResource {
  /// The timestamp at which this backup schedule was created and effective since. No backups will be created for this schedule before this time.
  late final pulumi.Output<String> createTime;
  /// For a schedule that runs daily at a specified time.
  late final pulumi.Output<Map<String, dynamic>> dailyRecurrence;
  late final pulumi.Output<String> databaseId;
  /// The unique backup schedule identifier across all locations and databases for the given project. This will be auto-assigned. Format is `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  late final pulumi.Output<String> retention;
  /// The timestamp at which this backup schedule was most recently updated. When a backup schedule is first created, this is the same as create_time.
  late final pulumi.Output<String> updateTime;
  /// For a schedule that runs weekly on a specific day and time.
  late final pulumi.Output<GoogleFirestoreAdminV1WeeklyRecurrenceResponse> weeklyRecurrence;

  /// Creates a new [BackupSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupSchedule]. {@macro pulumi_firestore_v1_backup_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupSchedule(
    String name, {
    BackupScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1:BackupSchedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dailyRecurrence = registerOutput<Map<String, dynamic>>('dailyRecurrence');
    this.databaseId = registerOutput<String>('databaseId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.retention = registerOutput<String>('retention');
    this.updateTime = registerOutput<String>('updateTime');
    this.weeklyRecurrence = registerOutput<GoogleFirestoreAdminV1WeeklyRecurrenceResponse>('weeklyRecurrence');
  }
}
