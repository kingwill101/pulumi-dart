// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_snapshot_policy_daily_schedule_response.dart';
import 'elastic_snapshot_policy_hourly_schedule_response.dart';
import 'elastic_snapshot_policy_monthly_schedule_response.dart';
import 'elastic_snapshot_policy_weekly_schedule_response.dart';

/// Elastic Snapshot policy properties
class ElasticSnapshotPolicyPropertiesResponse {
  /// Schedule for daily snapshots
  final pulumi.Input<ElasticSnapshotPolicyDailyScheduleResponse>? dailySchedule;
  /// Schedule for hourly snapshots
  final pulumi.Input<ElasticSnapshotPolicyHourlyScheduleResponse>? hourlySchedule;
  /// Schedule for monthly snapshots
  final pulumi.Input<ElasticSnapshotPolicyMonthlyScheduleResponse>? monthlySchedule;
  /// Configures if the snapshot policy is enabled on the volumes connected to the policy.
  final pulumi.Input<String>? policyStatus;
  /// Azure lifecycle management.
  final pulumi.Input<String> provisioningState;
  /// Schedule for weekly snapshots
  final pulumi.Input<ElasticSnapshotPolicyWeeklyScheduleResponse>? weeklySchedule;

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
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyDailyScheduleResponse, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyHourlyScheduleResponse, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyMonthlyScheduleResponse, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'policyStatus': ?policyStatus,
      'provisioningState': provisioningState,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyWeeklyScheduleResponse, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ElasticSnapshotPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyPropertiesResponse(
      dailySchedule: map['dailySchedule'] == null ? null : (ElasticSnapshotPolicyDailyScheduleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (ElasticSnapshotPolicyHourlyScheduleResponse.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>())).input(),
      monthlySchedule: map['monthlySchedule'] == null ? null : (ElasticSnapshotPolicyMonthlyScheduleResponse.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>())).input(),
      policyStatus: map['policyStatus'] == null ? null : (map['policyStatus'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (ElasticSnapshotPolicyWeeklyScheduleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

