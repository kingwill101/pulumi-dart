// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle.dart';
import 'resource_policy_hourly_cycle.dart';
import 'resource_policy_weekly_cycle.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicySchedule {
  final ResourcePolicyDailyCycle? dailySchedule;
  final ResourcePolicyHourlyCycle? hourlySchedule;
  final ResourcePolicyWeeklyCycle? weeklySchedule;

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
          : ResourcePolicyDailyCycle.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : ResourcePolicyHourlyCycle.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ResourcePolicyWeeklyCycle.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
