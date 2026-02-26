// ignore_for_file: unused_element, unnecessary_cast

import '../deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_date/deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_date.dart';
import '../deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_time/deploy_policy_rule_rollout_restriction_time_windows_one_time_window_end_time.dart';
import '../deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_date/deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_date.dart';
import '../deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_time/deploy_policy_rule_rollout_restriction_time_windows_one_time_window_start_time.dart';

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

  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow({
    required this.endDate,
    required this.endTime,
    required this.startDate,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endDate'] = endDate.toMap();
    map['endTime'] = endTime.toMap();
    map['startDate'] = startDate.toMap();
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow.fromMap(
      Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow(
      endDate: DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndDate
          .fromMap((map['endDate'] as Map).cast<String, dynamic>()),
      endTime: DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowEndTime
          .fromMap((map['endTime'] as Map).cast<String, dynamic>()),
      startDate:
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartDate
              .fromMap((map['startDate'] as Map).cast<String, dynamic>()),
      startTime:
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindowStartTime
              .fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
