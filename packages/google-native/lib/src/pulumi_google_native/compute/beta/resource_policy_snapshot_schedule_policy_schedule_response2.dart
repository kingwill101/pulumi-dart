// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_response2.dart';
import 'resource_policy_hourly_cycle_response2.dart';
import 'resource_policy_weekly_cycle_response2.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponse2 {
  final ResourcePolicyDailyCycleResponse2 dailySchedule;
  final ResourcePolicyHourlyCycleResponse2 hourlySchedule;
  final ResourcePolicyWeeklyCycleResponse2 weeklySchedule;

  ResourcePolicySnapshotSchedulePolicyScheduleResponse2({
    required this.dailySchedule,
    required this.hourlySchedule,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dailySchedule'] = dailySchedule.toMap();
    map['hourlySchedule'] = hourlySchedule.toMap();
    map['weeklySchedule'] = weeklySchedule.toMap();
    return map;
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponse2.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponse2(
      dailySchedule: ResourcePolicyDailyCycleResponse2.fromMap(
          (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: ResourcePolicyHourlyCycleResponse2.fromMap(
          (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: ResourcePolicyWeeklyCycleResponse2.fromMap(
          (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
