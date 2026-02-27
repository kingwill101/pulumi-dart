// ignore_for_file: unused_element, unnecessary_cast

import '../volume_snapshot_policy_daily_schedule/volume_snapshot_policy_daily_schedule.dart';
import '../volume_snapshot_policy_hourly_schedule/volume_snapshot_policy_hourly_schedule.dart';
import '../volume_snapshot_policy_monthly_schedule/volume_snapshot_policy_monthly_schedule.dart';
import '../volume_snapshot_policy_weekly_schedule/volume_snapshot_policy_weekly_schedule.dart';

class VolumeSnapshotPolicy {
  /// Daily schedule policy.
  /// Structure is documented below.
  final VolumeSnapshotPolicyDailySchedule? dailySchedule;

  /// Enables automated snapshot creation according to defined schedule. Default is false.
  /// To disable automatic snapshot creation you have to remove the whole snapshot_policy block.
  final bool? enabled;

  /// Hourly schedule policy.
  /// Structure is documented below.
  final VolumeSnapshotPolicyHourlySchedule? hourlySchedule;

  /// Monthly schedule policy.
  /// Structure is documented below.
  final VolumeSnapshotPolicyMonthlySchedule? monthlySchedule;

  /// Weekly schedule policy.
  /// Structure is documented below.
  final VolumeSnapshotPolicyWeeklySchedule? weeklySchedule;

  VolumeSnapshotPolicy({
    this.dailySchedule,
    this.enabled,
    this.hourlySchedule,
    this.monthlySchedule,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dailyScheduleValue = dailySchedule;
    if (dailyScheduleValue != null) {
      map['dailySchedule'] = dailyScheduleValue.toMap();
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final hourlyScheduleValue = hourlySchedule;
    if (hourlyScheduleValue != null) {
      map['hourlySchedule'] = hourlyScheduleValue.toMap();
    }
    final monthlyScheduleValue = monthlySchedule;
    if (monthlyScheduleValue != null) {
      map['monthlySchedule'] = monthlyScheduleValue.toMap();
    }
    final weeklyScheduleValue = weeklySchedule;
    if (weeklyScheduleValue != null) {
      map['weeklySchedule'] = weeklyScheduleValue.toMap();
    }
    return map;
  }

  factory VolumeSnapshotPolicy.fromMap(Map<String, dynamic> map) {
    return VolumeSnapshotPolicy(
      dailySchedule: map['dailySchedule'] == null
          ? null
          : VolumeSnapshotPolicyDailySchedule.fromMap(
              (map['dailySchedule'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      hourlySchedule: map['hourlySchedule'] == null
          ? null
          : VolumeSnapshotPolicyHourlySchedule.fromMap(
              (map['hourlySchedule'] as Map).cast<String, dynamic>()),
      monthlySchedule: map['monthlySchedule'] == null
          ? null
          : VolumeSnapshotPolicyMonthlySchedule.fromMap(
              (map['monthlySchedule'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : VolumeSnapshotPolicyWeeklySchedule.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
