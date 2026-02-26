// ignore_for_file: unused_element, unnecessary_cast

import '../deploy_policy_rule_rollout_restriction/deploy_policy_rule_rollout_restriction.dart';

class DeployPolicyRule {
  /// Rollout restrictions.
  /// Structure is documented below.
  final DeployPolicyRuleRolloutRestriction? rolloutRestriction;

  DeployPolicyRule({
    this.rolloutRestriction,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rolloutRestrictionValue = rolloutRestriction;
    if (rolloutRestrictionValue != null) {
      map['rolloutRestriction'] = rolloutRestrictionValue.toMap();
    }
    return map;
  }

  factory DeployPolicyRule.fromMap(Map<String, dynamic> map) {
    return DeployPolicyRule(
      rolloutRestriction: map['rolloutRestriction'] == null
          ? null
          : DeployPolicyRuleRolloutRestriction.fromMap(
              (map['rolloutRestriction'] as Map).cast<String, dynamic>()),
    );
  }
}
