// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_action_allow_custom_request_handling/rule_group_rule_action_allow_custom_request_handling.dart';

class RuleGroupRuleActionAllow {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final RuleGroupRuleActionAllowCustomRequestHandling? customRequestHandling;

  RuleGroupRuleActionAllow({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRequestHandlingValue = customRequestHandling;
    if (customRequestHandlingValue != null) {
      map['customRequestHandling'] = customRequestHandlingValue.toMap();
    }
    return map;
  }

  factory RuleGroupRuleActionAllow.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionAllow(
      customRequestHandling: map['customRequestHandling'] == null
          ? null
          : RuleGroupRuleActionAllowCustomRequestHandling.fromMap(
              (map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}
