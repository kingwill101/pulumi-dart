// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_count_custom_request_handling.dart';

class RuleGroupRuleActionCount {
  /// Defines custom handling for the web request. See Custom Request Handling below for details.
  final pulumi.Input<RuleGroupRuleActionCountCustomRequestHandling>? customRequestHandling;

  /// Creates a new [RuleGroupRuleActionCount].
  /// [customRequestHandling] Defines custom handling for the web request. See Custom Request Handling below for details.
  const RuleGroupRuleActionCount({
    this.customRequestHandling,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customRequestHandling': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionCountCustomRequestHandling, Map<String, dynamic>>(customRequestHandling, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleActionCount.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleActionCount(
      customRequestHandling: (() { final guardedValue = map['customRequestHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleGroupRuleActionCountCustomRequestHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
