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
  ElasticSnapshotPolicyProperties({
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
      dailySchedule: map['dailySchedule'] == null ? null : (ElasticSnapshotPolicyDailySchedule.fromMap((map['dailySchedule']! as Map).cast<String, dynamic>())).input(),
      hourlySchedule: map['hourlySchedule'] == null ? null : (ElasticSnapshotPolicyHourlySchedule.fromMap((map['hourlySchedule']! as Map).cast<String, dynamic>())).input(),
      monthlySchedule: map['monthlySchedule'] == null ? null : (ElasticSnapshotPolicyMonthlySchedule.fromMap((map['monthlySchedule']! as Map).cast<String, dynamic>())).input(),
      policyStatus: map['policyStatus'] == null ? null : (map['policyStatus']! as String).input(),
      weeklySchedule: map['weeklySchedule'] == null ? null : (ElasticSnapshotPolicyWeeklySchedule.fromMap((map['weeklySchedule']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

