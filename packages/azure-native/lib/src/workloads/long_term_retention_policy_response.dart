// ignore_for_file: unused_element, unnecessary_cast

import 'daily_retention_schedule_response.dart';
import 'monthly_retention_schedule_response.dart';
import 'weekly_retention_schedule_response.dart';
import 'yearly_retention_schedule_response.dart';

/// Long term retention policy.
class LongTermRetentionPolicyResponse {
  /// Daily retention schedule of the protection policy.
  final DailyRetentionScheduleResponse? dailySchedule;
  /// Monthly retention schedule of the protection policy.
  final MonthlyRetentionScheduleResponse? monthlySchedule;
  /// This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// Expected value is 'LongTermRetentionPolicy'.
  final String retentionPolicyType;
  /// Weekly retention schedule of the protection policy.
  final WeeklyRetentionScheduleResponse? weeklySchedule;
  /// Yearly retention schedule of the protection policy.
  final YearlyRetentionScheduleResponse? yearlySchedule;

  /// Creates a new [LongTermRetentionPolicyResponse].
  /// [dailySchedule] Daily retention schedule of the protection policy.
  /// [monthlySchedule] Monthly retention schedule of the protection policy.
  /// [retentionPolicyType] This property will be used as the discriminator for deciding the specific types in the polymorphic chain of types.
  /// [weeklySchedule] Weekly retention schedule of the protection policy.
  /// [yearlySchedule] Yearly retention schedule of the protection policy.
  LongTermRetentionPolicyResponse({
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

  factory LongTermRetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return LongTermRetentionPolicyResponse(
      dailySchedule: map['dailySchedule'] == null ? null : DailyRetentionScheduleResponse.fromMap((map['dailySchedule'] as Map).cast<String, dynamic>()),
      monthlySchedule: map['monthlySchedule'] == null ? null : MonthlyRetentionScheduleResponse.fromMap((map['monthlySchedule'] as Map).cast<String, dynamic>()),
      retentionPolicyType: map['retentionPolicyType'] as String,
      weeklySchedule: map['weeklySchedule'] == null ? null : WeeklyRetentionScheduleResponse.fromMap((map['weeklySchedule'] as Map).cast<String, dynamic>()),
      yearlySchedule: map['yearlySchedule'] == null ? null : YearlyRetentionScheduleResponse.fromMap((map['yearlySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}

