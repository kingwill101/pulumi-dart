// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../deploy_policy_rule_rollout_restriction_time_windows_one_time_window/deploy_policy_rule_rollout_restriction_time_windows_one_time_window.dart';
import '../deploy_policy_rule_rollout_restriction_time_windows_weekly_window/deploy_policy_rule_rollout_restriction_time_windows_weekly_window.dart';

class DeployPolicyRuleRolloutRestrictionTimeWindows {
  /// One-time windows within which actions are restricted.
  /// Structure is documented below.
  final List<DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow>?
      oneTimeWindows;

  /// The time zone in IANA format IANA Time Zone Database (e.g. America/New_York).
  final String timeZone;

  /// Recurring weekly windows within which actions are restricted.
  /// Structure is documented below.
  final List<DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow>?
      weeklyWindows;

  DeployPolicyRuleRolloutRestrictionTimeWindows({
    this.oneTimeWindows,
    required this.timeZone,
    this.weeklyWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final oneTimeWindowsValue = oneTimeWindows;
    if (oneTimeWindowsValue != null) {
      map['oneTimeWindows'] = pulumi.Input.encodeList<
          DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow,
          Map<String, dynamic>>(oneTimeWindowsValue, (value) => value.toMap());
    }
    map['timeZone'] = timeZone;
    final weeklyWindowsValue = weeklyWindows;
    if (weeklyWindowsValue != null) {
      map['weeklyWindows'] = pulumi.Input.encodeList<
          DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow,
          Map<String, dynamic>>(weeklyWindowsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DeployPolicyRuleRolloutRestrictionTimeWindows.fromMap(
      Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestrictionTimeWindows(
      oneTimeWindows: map['oneTimeWindows'] == null
          ? null
          : pulumi.Input.decodeList<
                  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow>(
              map['oneTimeWindows'],
              (value) =>
                  DeployPolicyRuleRolloutRestrictionTimeWindowsOneTimeWindow
                      .fromMap((value as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] as String,
      weeklyWindows: map['weeklyWindows'] == null
          ? null
          : pulumi.Input.decodeList<
                  DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow>(
              map['weeklyWindows'],
              (value) =>
                  DeployPolicyRuleRolloutRestrictionTimeWindowsWeeklyWindow
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
