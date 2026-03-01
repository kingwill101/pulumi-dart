// ignore_for_file: unused_element, unnecessary_cast

import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_date.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_time.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_date.dart';
import 'deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_time.dart';

class DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow {
  /// End date.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate
  endDate;

  /// End time (exclusive). You may use 24:00 for the end of the day.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime
  endTime;

  /// Start date.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDate
  startDate;

  /// Start time (inclusive). Use 00:00 for the beginning of the day.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTime
  startTime;

  /// Creates a new [DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow].
  /// [endDate] End date.
  /// [endTime] End time (exclusive). You may use 24:00 for the end of the day.
  /// [startDate] Start date.
  /// [startTime] Start time (inclusive). Use 00:00 for the beginning of the day.
  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow({
    required this.endDate,
    required this.endTime,
    required this.startDate,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endDate': endDate.toMap(),
      'endTime': endTime.toMap(),
      'startDate': startDate.toMap(),
      'startTime': startTime.toMap(),
    };
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow(
      endDate:
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate.fromMap(
            (map['endDate'] as Map).cast<String, dynamic>(),
          ),
      endTime:
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime.fromMap(
            (map['endTime'] as Map).cast<String, dynamic>(),
          ),
      startDate:
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDate.fromMap(
            (map['startDate'] as Map).cast<String, dynamic>(),
          ),
      startTime:
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTime.fromMap(
            (map['startTime'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
