// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_allow_custom_request_handling.dart';

class RuleGroupRuleActionAllow {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final pulumi.Input<RuleGroupRuleActionAllowCustomRequestHandling>? customRequestHandling;

  /// Creates a new [RuleGroupRuleActionAllow].
  /// [customRequestHandling] Defines custom handling for the web request. See Custom Request Handling below for details.
  RuleGroupRuleActionAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionAllowCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleActionAllow.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionAllow(
      customRequestHandling: map['customRequestHandling'] == null ? null : ((RuleGroupRuleActionAllowCustomRequestHandling.fromMap((map['customRequestHandling']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

