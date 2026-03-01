// ignore_for_file: unused_element, unnecessary_cast

import 'rule_group_rule_action_count_custom_request_handling.dart';

class RuleGroupRuleActionCount {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final RuleGroupRuleActionCountCustomRequestHandling? customRequestHandling;

  /// Creates a new [RuleGroupRuleActionCount].
  /// [customRequestHandling] Defines custom handling for the web request. See Custom Request Handling below for details.
  RuleGroupRuleActionCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?customRequestHandling == null ? null : customRequestHandling!.toMap(),
    };
  }

  factory RuleGroupRuleActionCount.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionCount(
      customRequestHandling: map['customRequestHandling'] == null ? null : RuleGroupRuleActionCountCustomRequestHandling.fromMap((map['customRequestHandling'] as Map).cast<String, dynamic>()),
    );
  }
}

