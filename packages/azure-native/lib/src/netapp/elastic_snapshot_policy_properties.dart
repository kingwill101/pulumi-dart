// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_snapshot_policy_daily_schedule.dart';
import 'elastic_snapshot_policy_hourly_schedule.dart';
import 'elastic_snapshot_policy_monthly_schedule.dart';
import 'elastic_snapshot_policy_weekly_schedule.dart';

/// Elastic Snapshot policy properties
class ElasticSnapshotPolicyProperties {
  /// Schedule for daily snapshots
  final ElasticSnapshotPolicyDailySchedule? dailySchedule;
  /// Schedule for hourly snapshots
  final ElasticSnapshotPolicyHourlySchedule? hourlySchedule;
  /// Schedule for monthly snapshots
  final ElasticSnapshotPolicyMonthlySchedule? monthlySchedule;
  /// Configures if the snapshot policy is enabled on the volumes connected to the policy.
  final String? policyStatus;
  /// Schedule for weekly snapshots
  final ElasticSnapshotPolicyWeeklySchedule? weeklySchedule;

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
      'dailySchedule': ?dailySchedule == null ? null : dailySchedule!.toMap(),
      'hourlySchedule': ?hourlySchedule == null ? null : hourlySchedule!.toMap(),
      'monthlySchedule': ?monthlySchedule == null ? null : monthlySchedule!.toMap(),
      'policyStatus': ?policyStatus,
      'weeklySchedule': ?weeklySchedule == null ? null : weeklySchedule!.toMap(),
    };
  }

  factory ElasticSnapshotPolicyProperties.fromMap(Map<String, dynamic> map) {
    return ElasticSnapshotPolicyProperties(
      dailySchedule: map['dailySchedule'] == null ? null : ElasticSnapshotPolicyDailySchedule.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      hourlySchedule: map['hourlySchedule'] == null ? null : ElasticSnapshotPolicyHourlySchedule.fromMap((map['hourlySchedule'] as Map).cast<String, dynamic>()),
      monthlySchedule: map['monthlySchedule'] == null ? null : ElasticSnapshotPolicyMonthlySchedule.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>()),
      policyStatus: map['policyStatus'] == null ? null : map['policyStatus'] as String,
      weeklySchedule: map['weeklySchedule'] == null ? null : ElasticSnapshotPolicyWeeklySchedule.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

