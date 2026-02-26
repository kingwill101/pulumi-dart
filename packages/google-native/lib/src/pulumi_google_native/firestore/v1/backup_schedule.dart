import 'package:pulumi/pulumi.dart';
import 'backup_schedule_args.dart';
import 'google_firestore_admin_v1_weekly_recurrence_response.dart';

/// Creates a backup schedule on a database. At most two backup schedules can be configured on a database, one daily backup schedule with retention up to 7 days and one weekly backup schedule with retention up to 14 weeks.
/// Auto-naming is currently not supported for this resource.
class BackupSchedule extends CustomResource {
  /// The timestamp at which this backup schedule was created and effective since. No backups will be created for this schedule before this time.
  late final Output<String> createTime;

  /// For a schedule that runs daily at a specified time.
  late final Output<Map<String, dynamic>> dailyRecurrence;
  late final Output<String> databaseId;

  /// The unique backup schedule identifier across all locations and databases for the given project. This will be auto-assigned. Format is `projects/{project}/databases/{database}/backupSchedules/{backup_schedule}`
  late final Output<String> name;
  late final Output<String> project;

  /// At what relative time in the future, compared to its creation time, the backup should be deleted, e.g. keep backups for 7 days.
  late final Output<String> retention;

  /// The timestamp at which this backup schedule was most recently updated. When a backup schedule is first created, this is the same as create_time.
  late final Output<String> updateTime;

  /// For a schedule that runs weekly on a specific day and time.
  late final Output<GoogleFirestoreAdminV1WeeklyRecurrenceResponse>
      weeklyRecurrence;

  BackupSchedule(
    String name, {
    BackupScheduleArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1:BackupSchedule',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.dailyRecurrence = Output.createUnknown<Map<String, dynamic>>();
    this.databaseId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.retention = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.weeklyRecurrence =
        Output.createUnknown<GoogleFirestoreAdminV1WeeklyRecurrenceResponse>();
  }
}
