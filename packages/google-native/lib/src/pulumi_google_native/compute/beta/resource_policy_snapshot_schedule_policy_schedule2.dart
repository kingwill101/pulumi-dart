// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle2.dart';
import 'resource_policy_hourly_cycle2.dart';
import 'resource_policy_weekly_cycle2.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicySchedule2 {
  final ResourcePolicyDailyCycle2? dailySchedule;
  final ResourcePolicyHourlyCycle2? hourlySchedule;
  final ResourcePolicyWeeklyCycle2? weeklySchedule;

  ResourcePolicySnapshotSchedulePolicySchedule2({
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

  factory ResourcePolicySnapshotSchedulePolicySchedule2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySchedule2(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : ResourcePolicyDailyCycle2.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : ResourcePolicyHourlyCycle2.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ResourcePolicyWeeklyCycle2.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
