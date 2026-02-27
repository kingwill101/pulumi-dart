// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_automated_backup_policy_weekly_schedule_start_time/cluster_automated_backup_policy_weekly_schedule_start_time.dart';

class ClusterAutomatedBackupPolicyWeeklySchedule {
  /// The days of the week to perform a backup. At least one day of the week must be provided.
  /// Each value may be one of: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final List<String>? daysOfWeeks;

  /// The times during the day to start a backup. At least one start time must be provided. The start times are assumed to be in UTC and to be an exact hour (e.g., 04:00:00).
  /// Structure is documented below.
  final List<ClusterAutomatedBackupPolicyWeeklyScheduleStartTime> startTimes;

  ClusterAutomatedBackupPolicyWeeklySchedule({
    this.daysOfWeeks,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final daysOfWeeksValue = daysOfWeeks;
    if (daysOfWeeksValue != null) {
      map['daysOfWeeks'] = daysOfWeeksValue;
    }
    map['startTimes'] = pulumi.Input.encodeList<
        ClusterAutomatedBackupPolicyWeeklyScheduleStartTime,
        Map<String, dynamic>>(startTimes, (value) => value.toMap());
    return map;
  }

  factory ClusterAutomatedBackupPolicyWeeklySchedule.fromMap(
      Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicyWeeklySchedule(
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : (map['daysOfWeeks'] as List).cast<String>(),
      startTimes: pulumi.Input.decodeList<
              ClusterAutomatedBackupPolicyWeeklyScheduleStartTime>(
          map['startTimes'],
          (value) =>
              ClusterAutomatedBackupPolicyWeeklyScheduleStartTime.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
