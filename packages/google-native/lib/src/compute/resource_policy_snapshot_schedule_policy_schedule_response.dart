// ignore_for_file: unused_element, unnecessary_cast

import 'resource_policy_daily_cycle_response.dart';
import 'resource_policy_hourly_cycle_response.dart';
import 'resource_policy_weekly_cycle_response.dart';

/// A schedule for disks where the schedueled operations are performed.
class ResourcePolicySnapshotSchedulePolicyScheduleResponse {
  final ResourcePolicyDailyCycleResponse dailySchedule;
  final ResourcePolicyHourlyCycleResponse hourlySchedule;
  final ResourcePolicyWeeklyCycleResponse weeklySchedule;

  /// Creates a new [ResourcePolicySnapshotSchedulePolicyScheduleResponse].
  /// [dailySchedule] Required.
  /// [hourlySchedule] Required.
  /// [weeklySchedule] Required.
  ResourcePolicySnapshotSchedulePolicyScheduleResponse({
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

  factory ResourcePolicySnapshotSchedulePolicyScheduleResponse.fromMap(Map<String, dynamic> map) {
    return ResourcePolicySnapshotSchedulePolicyScheduleResponse(
      dailySchedule: ResourcePolicyDailyCycleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: ResourcePolicyHourlyCycleResponse.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: ResourcePolicyWeeklyCycleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

