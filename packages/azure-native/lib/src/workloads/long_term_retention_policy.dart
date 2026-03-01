// ignore_for_file: unused_element, unnecessary_cast

import 'daily_retention_schedule.dart';
import 'monthly_retention_schedule.dart';
import 'weekly_retention_schedule.dart';
import 'yearly_retention_schedule.dart';

/// Long term retention policy.
class LongTermRetentionPolicy {
  /// Daily retention schedule of the protection policy.
  final DailyRetentionSchedule? dailySchedule;
  /// Monthly retention schedule of the protection policy.
  final MonthlyRetentionSchedule? monthlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermRetentionPolicy'.
  final String retentionPolicyType;
  /// Weekly retention schedule of the protection policy.
  final WeeklyRetentionSchedule? weeklySchedule;
  /// Yearly retention schedule of the protection policy.
  final YearlyRetentionSchedule? yearlySchedule;

  /// Creates a new [LongTermRetentionPolicy].
  /// [dailySchedule] Daily retention schedule of the protection policy.
  /// [monthlySchedule] Monthly retention schedule of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [weeklySchedule] Weekly retention schedule of the protection policy.
  /// [yearlySchedule] Yearly retention schedule of the protection policy.
  LongTermRetentionPolicy({
    this.dailySchedule,
    this.monthlySchedule,
    required this.retentionPolicyType,
    this.weeklySchedule,
    this.yearlySchedule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dailySchedule': ?dailySchedule == null ? null : dailySchedule!.toMap(),
      'monthlySchedule': ?monthlySchedule == null ? null : monthlySchedule!.toMap(),
      'retentionPolicyType': retentionPolicyType,
      'weeklySchedule': ?weeklySchedule == null ? null : weeklySchedule!.toMap(),
      'yearlySchedule': ?yearlySchedule == null ? null : yearlySchedule!.toMap(),
    };
  }

  factory LongTermRetentionPolicy.fromMap(Map<String, dynamic> map) {
    return LongTermRetentionPolicy(
      dailySchedule: map['dailySchedule'] == null ? null : DailyRetentionSchedule.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      monthlySchedule: map['monthlySchedule'] == null ? null : MonthlyRetentionSchedule.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>()),
      retentionPolicyType: map['retentionPolicyType'] as String,
      weeklySchedule: map['weeklySchedule'] == null ? null : WeeklyRetentionSchedule.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
      yearlySchedule: map['yearlySchedule'] == null ? null : YearlyRetentionSchedule.fromMap((map['yearlySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

