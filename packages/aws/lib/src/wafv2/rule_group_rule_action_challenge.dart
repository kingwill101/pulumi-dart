// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_action_challenge_custom_request_handling.dart';

class RuleGroupRuleActionChallenge {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final RuleGroupRuleActionChallengeCustomRequestHandling? customRequestHandling;

  /// Creates a new [RuleGroupRuleActionChallenge].
  /// [customRequestHandling] Defines custom handling for the web request. See Custom Request Handling below for details.
  RuleGroupRuleActionChallenge({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null ? null : customRequestHandling!.toMap(),
    };
  }

  factory RuleGroupRuleActionChallenge.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionChallenge(
      customRequestHandling: map['customRequestHandling'] == null ? null : RuleGroupRuleActionChallengeCustomRequestHandling.fromMap((map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}

