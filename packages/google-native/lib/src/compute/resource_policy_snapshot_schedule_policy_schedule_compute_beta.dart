// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_compute_beta.dart';
import 'resource_policy_hourly_cycle_compute_beta.dart';
import 'resource_policy_weekly_cycle_compute_beta.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta {
  final ResourcePolicyDailyCycleComputeBeta? dailySchedule;
  final ResourcePolicyHourlyCycleComputeBeta? hourlySchedule;
  final ResourcePolicyWeeklyCycleComputeBeta? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta].
  /// [dailySchedule] Optional.
  /// [hourlySchedule] Optional.
  /// [weeklySchedule] Optional.
  ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta({
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

  factory ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleComputeBeta(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : ResourcePolicyDailyCycleComputeBeta.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : ResourcePolicyHourlyCycleComputeBeta.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ResourcePolicyWeeklyCycleComputeBeta.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
