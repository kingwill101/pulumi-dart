// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_snapshot_schedule_policy_schedule_daily_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_hourly_schedule.dart';
import 'resource_policy_snapshot_schedule_policy_schedule_weekly_schedule.dart';

class ResourcePolicySnapshotSchedulePolicySchedule {
  /// The policy will execute every nth day at the specified time.
  /// Structure is documented below.
  final ResourcePolicySnapshotSchedulePolicyScheduleDailySchedule?
      dailySchedule;

  /// The policy will execute every nth hour starting at the specified time.
  /// Structure is documented below.
  final ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule?
      hourlySchedule;

  /// Allows specifying a snapshot time for each day of the week.
  /// Structure is documented below.
  final ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule?
      weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicySchedule].
  /// [dailySchedule] The policy will execute every nth day at the specified time.
  /// [hourlySchedule] The policy will execute every nth hour starting at the specified time.
  /// [weeklySchedule] Allows specifying a snapshot time for each day of the week.
  ResourcePolicySnapshotSchedulePolicySchedule({
    this.dailySchedule,
    this.hourlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyScheduleValue = dailySchedule;
    if (dailyScheduleValue != null) {
      map['dailySchedule'] = dailyScheduleValue.toMap();
    }
    final hourlyScheduleValue = hourlySchedule;
    if (hourlyScheduleValue != null) {
      map['hourlySchedule'] = hourlyScheduleValue.toMap();
    }
    final weeklyScheduleValue = weeklySchedule;
    if (weeklyScheduleValue != null) {
      map['weeklySchedule'] = weeklyScheduleValue.toMap();
    }
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicySchedule.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySchedule(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyScheduleDailySchedule.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyScheduleHourlySchedule.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ResourcePolicySnapshotSchedulePolicyScheduleWeeklySchedule.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
