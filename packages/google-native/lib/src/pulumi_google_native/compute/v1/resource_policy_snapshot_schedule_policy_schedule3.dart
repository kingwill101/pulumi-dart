// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle3.dart';
import 'resource_policy_hourly_cycle3.dart';
import 'resource_policy_weekly_cycle3.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicySchedule3 {
  final ResourcePolicyDailyCycle3? dailySchedule;
  final ResourcePolicyHourlyCycle3? hourlySchedule;
  final ResourcePolicyWeeklyCycle3? weeklySchedule;

  ResourcePolicySnapshotSchedulePolicySchedule3({
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

  factory ResourcePolicySnapshotSchedulePolicySchedule3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicySchedule3(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : ResourcePolicyDailyCycle3.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : ResourcePolicyHourlyCycle3.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ResourcePolicyWeeklyCycle3.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
