// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_challenge_custom_request_handling.dart';

class RuleGroupRuleActionChallenge {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final pulumi.Input<RuleGroupRuleActionChallengeCustomRequestHandling>?
  customRequestHandling;

  /// Creates a new [RuleGroupRuleActionChallenge].
  /// [customRequestHandling] Defines custom handling for the web request. See Custom Request Handling below for details.
  RuleGroupRuleActionChallenge({this.customRequestHandling});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling':
          ?pulumi.Input.mapOptionalInputValue<
            RuleGroupRuleActionChallengeCustomRequestHandling,
            Map<String, dynamic>
          >(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleActionChallenge.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionChallenge(
      customRequestHandling: (() {
        final guardedValue = map['customRequestHandling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuleGroupRuleActionChallengeCustomRequestHandling.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
