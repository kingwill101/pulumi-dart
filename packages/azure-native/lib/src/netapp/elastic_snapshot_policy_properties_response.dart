// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_snapshot_policy_daily_schedule_response.dart';
import 'elastic_snapshot_policy_hourly_schedule_response.dart';
import 'elastic_snapshot_policy_monthly_schedule_response.dart';
import 'elastic_snapshot_policy_weekly_schedule_response.dart';

/// Elastic Snapshot policy properties
class ElasticSnapshotPolicyPropertiesResponse {
  /// Schedule for daily snapshots
  final ElasticSnapshotPolicyDailyScheduleResponse? dailySchedule;
  /// Schedule for hourly snapshots
  final ElasticSnapshotPolicyHourlyScheduleResponse? hourlySchedule;
  /// Schedule for monthly snapshots
  final ElasticSnapshotPolicyMonthlyScheduleResponse? monthlySchedule;
  /// Configures if the snapshot policy is enabled on the volumes connected to the policy.
  final String? policyStatus;
  /// Azure lifecycle management.
  final String provisioningState;
  /// Schedule for weekly snapshots
  final ElasticSnapshotPolicyWeeklyScheduleResponse? weeklySchedule;

  /// Creates a new [ElasticSnapshotPolicyPropertiesResponse].
  /// [dailySchedule] Schedule for daily snapshots
  /// [hourlySchedule] Schedule for hourly snapshots
  /// [monthlySchedule] Schedule for monthly snapshots
  /// [policyStatus] Configures if the snapshot policy is enabled on the volumes connected to the policy.
  /// [provisioningState] Azure lifecycle management.
  /// [weeklySchedule] Schedule for weekly snapshots
  ElasticSnapshotPolicyPropertiesResponse({
    this.dailySchedule,
    this.hourlySchedule,
    this.monthlySchedule,
    this.policyStatus,
    required this.provisioningState,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?dailySchedule == null ? null : dailySchedule!.toMap(),
      'hourlySchedule': ?hourlySchedule == null ? null : hourlySchedule!.toMap(),
      'monthlySchedule': ?monthlySchedule == null ? null : monthlySchedule!.toMap(),
      'policyStatus': ?policyStatus,
      'provisioningState': provisioningState,
      'weeklySchedule': ?weeklySchedule == null ? null : weeklySchedule!.toMap(),
    };
  }

  factory ElasticSnapshotPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyPropertiesResponse(
      dailySchedule: map['dailySchedule'] == null ? null : ElasticSnapshotPolicyDailyScheduleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null ? null : ElasticSnapshotPolicyHourlyScheduleResponse.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      monthlySchedule: map['monthlySchedule'] == null ? null : ElasticSnapshotPolicyMonthlyScheduleResponse.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>()),
      policyStatus: map['policyStatus'] == null ? null : map['policyStatus'] as String,
      provisioningState: map['provisioningState'] as String,
      weeklySchedule: map['weeklySchedule'] == null ? null : ElasticSnapshotPolicyWeeklyScheduleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

