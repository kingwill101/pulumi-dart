// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_compute_v1.dart';
import 'resource_policy_hourly_cycle_compute_v1.dart';
import 'resource_policy_weekly_cycle_compute_v1.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleComputeV1 {
  final ResourcePolicyDailyCycleComputeV1? dailySchedule;
  final ResourcePolicyHourlyCycleComputeV1? hourlySchedule;
  final ResourcePolicyWeeklyCycleComputeV1? weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleComputeV1].
  /// [dailySchedule] Optional.
  /// [hourlySchedule] Optional.
  /// [weeklySchedule] Optional.
  ResourcePolicySnapshotSchedulePolicyScheduleComputeV1({
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

  factory ResourcePolicySnapshotSchedulePolicyScheduleComputeV1.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleComputeV1(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : ResourcePolicyDailyCycleComputeV1.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : ResourcePolicyHourlyCycleComputeV1.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ResourcePolicyWeeklyCycleComputeV1.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
