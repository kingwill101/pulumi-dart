// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action.dart';
import 'web_acl_rule_override_action.dart';

class WebAclRule {
  /// Configuration block of the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Not used if `type` is `GROUP`. Detailed below.
  final pulumi.Input<WebAclRuleAction>? action;
  /// Configuration block of the override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Only used if `type` is `GROUP`. Detailed below.
  final pulumi.Input<WebAclRuleOverrideAction>? overrideAction;
  /// Specifies the order in which the rules in a WebACL are evaluated.
  /// Rules with a lower value are evaluated before rules with a higher value.
  final pulumi.Input<int> priority;
  /// ID of the associated WAF (Regional) rule (e.g., `aws.wafregional.Rule`). WAF (Global) rules cannot be used.
  final pulumi.Input<String> ruleId;
  /// The rule type, either `REGULAR`, as defined by [Rule](http://docs.aws.amazon.com/waf/latest/APIReference/API_Rule.html), `RATE_BASED`, as defined by [RateBasedRule](http://docs.aws.amazon.com/waf/latest/APIReference/API_RateBasedRule.html), or `GROUP`, as defined by [RuleGroup](https://docs.aws.amazon.com/waf/latest/APIReference/API_RuleGroup.html). The default is REGULAR. If you add a RATE_BASED rule, you need to set `type` as `RATE_BASED`. If you add a GROUP rule, you need to set `type` as `GROUP`.
  final pulumi.Input<String>? type;

  /// Creates a new [WebAclRule].
  /// [action] Configuration block of the action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Not used if `type` is `GROUP`. Detailed below.
  /// [overrideAction] Configuration block of the override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule.  Only used if `type` is `GROUP`. Detailed below.
  /// [priority] Specifies the order in which the rules in a WebACL are evaluated.
  /// [ruleId] ID of the associated WAF (Regional) rule (e.g., `aws.wafregional.Rule`). WAF (Global) rules cannot be used.
  /// [type] The rule type, either `REGULAR`, as defined by [Rule](http://docs.aws.amazon.com/waf/latest/APIReference/API_Rule.html), `RATE_BASED`, as defined by [RateBasedRule](http://docs.aws.amazon.com/waf/latest/APIReference/API_RateBasedRule.html), or `GROUP`, as defined by [RuleGroup](https://docs.aws.amazon.com/waf/latest/APIReference/API_RuleGroup.html). The default is REGULAR. If you add a RATE_BASED rule, you need to set `type` as `RATE_BASED`. If you add a GROUP rule, you need to set `type` as `GROUP`.
  const WebAclRule({
    this.action,
    this.overrideAction,
    required this.priority,
    required this.ruleId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<WebAclRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'overrideAction': ?pulumi.Input.mapOptionalInputValue<WebAclRuleOverrideAction, Map<String, dynamic>>(overrideAction, (value) => value.toMap()),
      'priority': priority,
      'ruleId': ruleId,
      'type': ?type,
    };
  }

  factory WebAclRule.fromMap(Map<String, dynamic> map) {
    return WebAclRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      overrideAction: (() { final guardedValue = map['overrideAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      ruleId: pulumi.Input.fromValue(map['ruleId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

