// ignore_for_file: unused_element, unnecessary_cast

import 'deploy_policy_rule_rollout_restriction_time_windows_weekly_window_end_time.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_weekly_window_start_time.dart';

class DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow {
  /// Days of week. If left empty, all days of the week will be included.
  /// Each value may be one of: `MONDAY`, `TUESDAY`, `WEDNESDAY`, `THURSDAY`, `FRIDAY`, `SATURDAY`, `SUNDAY`.
  final List<String>? daysOfWeeks;

  /// End time (exclusive). Use 24:00 to indicate midnight. If you specify endTime you must also specify startTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTime?
  endTime;

  /// Start time (inclusive). Use 00:00 for the beginning of the day. If you specify startTime you must also specify endTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime?
  startTime;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow].
  /// [daysOfWeeks] Days of week. If left empty, all days of the week will be included.
  /// [endTime] End time (exclusive). Use 24:00 to indicate midnight. If you specify endTime you must also specify startTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  /// [startTime] Start time (inclusive). Use 00:00 for the beginning of the day. If you specify startTime you must also specify endTime. If left empty, this will block for the entire day for the days specified in daysOfWeek.
  DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow({
    this.daysOfWeeks,
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysOfWeeks': ?daysOfWeeks,
      'endTime': ?endTime == null ? null : endTime!.toMap(),
      'startTime': ?startTime == null ? null : startTime!.toMap(),
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow(
      daysOfWeeks: map['daysOfWeeks'] == null
          ? null
          : (map['daysOfWeeks'] as List).cast<String>(),
      endTime: map['endTime'] == null
          ? null
          : DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowEndTime.fromMap(
              (map['endTime'] as Map).cast<String, dynamic>(),
            ),
      startTime: map['startTime'] == null
          ? null
          : DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindowStartTime.fromMap(
              (map['startTime'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
