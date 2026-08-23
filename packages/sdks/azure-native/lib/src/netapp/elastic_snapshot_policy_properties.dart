// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_snapshot_policy_daily_schedule.dart';
import 'elastic_snapshot_policy_hourly_schedule.dart';
import 'elastic_snapshot_policy_monthly_schedule.dart';
import 'elastic_snapshot_policy_weekly_schedule.dart';

/// Elastic Snapshot policy properties
class ElasticSnapshotPolicyProperties {
  /// Schedule for daily snapshots
  final pulumi.Input<ElasticSnapshotPolicyDailySchedule>? dailySchedule;
  /// Schedule for hourly snapshots
  final pulumi.Input<ElasticSnapshotPolicyHourlySchedule>? hourlySchedule;
  /// Schedule for monthly snapshots
  final pulumi.Input<ElasticSnapshotPolicyMonthlySchedule>? monthlySchedule;
  /// Configures if the snapshot policy is enabled on the volumes connected to the policy.
  final pulumi.Input<String>? policyStatus;
  /// Schedule for weekly snapshots
  final pulumi.Input<ElasticSnapshotPolicyWeeklySchedule>? weeklySchedule;

  /// Creates a new [ElasticSnapshotPolicyProperties].
  /// [dailySchedule] Schedule for daily snapshots
  /// [hourlySchedule] Schedule for hourly snapshots
  /// [monthlySchedule] Schedule for monthly snapshots
  /// [policyStatus] Configures if the snapshot policy is enabled on the volumes connected to the policy.
  /// [weeklySchedule] Schedule for weekly snapshots
  const ElasticSnapshotPolicyProperties({
    this.dailySchedule,
    this.hourlySchedule,
    this.monthlySchedule,
    this.policyStatus,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyDailySchedule, Map<String, dynamic>>(dailySchedule, (value) => value.toMap()),
      'hourlySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyHourlySchedule, Map<String, dynamic>>(hourlySchedule, (value) => value.toMap()),
      'monthlySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyMonthlySchedule, Map<String, dynamic>>(monthlySchedule, (value) => value.toMap()),
      'policyStatus': ?policyStatus,
      'weeklySchedule': ?pulumi.Input.mapOptionalInputValue<ElasticSnapshotPolicyWeeklySchedule, Map<String, dynamic>>(weeklySchedule, (value) => value.toMap()),
    };
  }

  factory ElasticSnapshotPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyProperties(
      dailySchedule: (() { final guardedValue = map['dailySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSnapshotPolicyDailySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hourlySchedule: (() { final guardedValue = map['hourlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSnapshotPolicyHourlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monthlySchedule: (() { final guardedValue = map['monthlySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSnapshotPolicyMonthlySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyStatus: (() { final guardedValue = map['policyStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklySchedule: (() { final guardedValue = map['weeklySchedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticSnapshotPolicyWeeklySchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
