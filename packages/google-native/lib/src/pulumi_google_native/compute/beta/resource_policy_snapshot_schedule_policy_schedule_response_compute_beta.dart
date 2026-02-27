// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_response_compute_beta.dart';
import 'resource_policy_hourly_cycle_response_compute_beta.dart';
import 'resource_policy_weekly_cycle_response_compute_beta.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta {
  final ResourcePolicyDailyCycleResponseComputeBeta dailySchedule;
  final ResourcePolicyHourlyCycleResponseComputeBeta hourlySchedule;
  final ResourcePolicyWeeklyCycleResponseComputeBeta weeklySchedule;

  ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta({
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

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeBeta(
      dailySchedule: ResourcePolicyDailyCycleResponseComputeBeta.fromMap(
          (map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: ResourcePolicyHourlyCycleResponseComputeBeta.fromMap(
          (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: ResourcePolicyWeeklyCycleResponseComputeBeta.fromMap(
          (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
