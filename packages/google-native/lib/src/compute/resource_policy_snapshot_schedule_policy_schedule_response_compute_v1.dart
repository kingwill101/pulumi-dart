// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_response_compute_v1.dart';
import 'resource_policy_hourly_cycle_response_compute_v1.dart';
import 'resource_policy_weekly_cycle_response_compute_v1.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1 {
  final ResourcePolicyDailyCycleResponseComputeV1 dailySchedule;
  final ResourcePolicyHourlyCycleResponseComputeV1 hourlySchedule;
  final ResourcePolicyWeeklyCycleResponseComputeV1 weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1].
  /// [dailySchedule] Required.
  /// [hourlySchedule] Required.
  /// [weeklySchedule] Required.
  ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1({
    required this.dailySchedule,
    required this.hourlySchedule,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': dailySchedule.toMap(),
      'hourlySchedule': hourlySchedule.toMap(),
      'weeklySchedule': weeklySchedule.toMap(),
    };
  }

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponseComputeV1(
      dailySchedule: ResourcePolicyDailyCycleResponseComputeV1.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: ResourcePolicyHourlyCycleResponseComputeV1.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: ResourcePolicyWeeklyCycleResponseComputeV1.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

