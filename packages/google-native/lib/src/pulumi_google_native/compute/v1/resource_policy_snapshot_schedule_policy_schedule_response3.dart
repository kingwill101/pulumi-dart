// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_response3.dart';
import 'resource_policy_hourly_cycle_response3.dart';
import 'resource_policy_weekly_cycle_response3.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponse3 {
  final ResourcePolicyDailyCycleResponse3 dailySchedule;
  final ResourcePolicyHourlyCycleResponse3 hourlySchedule;
  final ResourcePolicyWeeklyCycleResponse3 weeklySchedule;

  ResourcePolicySnapshotSchedulePolicyScheduleResponse3({
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

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponse3.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponse3(
      dailySchedule: ResourcePolicyDailyCycleResponse3.fromMap(
          (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: ResourcePolicyHourlyCycleResponse3.fromMap(
          (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: ResourcePolicyWeeklyCycleResponse3.fromMap(
          (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
