// ignore_for_file: unused_element, unnecessary_cast

import '../deploy_policy_rule_rollout_restriction_time_windows/deploy_policy_rule_rollout_restriction_time_windows.dart';

class DeployPolicyRuleRolloutRestriction {
  /// Rollout actions to be restricted as part of the policy. If left empty, all actions will be restricted.
  /// Each value may be one of: `ADVANCE`, `APPROVE`, `CANCEL`, `CREATE`, `IGNORE_JOB`, `RETRY_JOB`, `ROLLBACK`, `TERMINATE_JOBRUN`.
  final List<String>? actions;

  /// ID of the rule. This id must be unique in the `DeployPolicy` resource to which this rule belongs. The format is `a-z{0,62}`.
  final String id;

  /// What invoked the action. If left empty, all invoker types will be restricted.
  /// Each value may be one of: `USER`, `DEPLOY_AUTOMATION`.
  final List<String>? invokers;

  /// Time window within which actions are restricted.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestrictionTimeWindows? timeWindows;

  DeployPolicyRuleRolloutRestriction({
    this.actions,
    required this.id,
    this.invokers,
    this.timeWindows,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionsValue = actions;
    if (actionsValue != null) {
      map['actions'] = actionsValue;
    }
    map['id'] = id;
    final invokersValue = invokers;
    if (invokersValue != null) {
      map['invokers'] = invokersValue;
    }
    final timeWindowsValue = timeWindows;
    if (timeWindowsValue != null) {
      map['timeWindows'] = timeWindowsValue.toMap();
    }
    return map;
  }

  factory DeployPolicyRuleRolloutRestriction.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRuleRolloutRestriction(
      actions: map['actions'] == null
          ? null
          : (map['actions'] as List).cast<String>(),
      id: map['id'] as String,
      invokers: map['invokers'] == null
          ? null
          : (map['invokers'] as List).cast<String>(),
      timeWindows: map['timeWindows'] == null
          ? null
          : DeployPolicyRuleRolloutRestrictionTimeWindows.fromMap(
              (map['timeWindows'] as Map).cast<String, dynamic>()),
    );
  }
}
