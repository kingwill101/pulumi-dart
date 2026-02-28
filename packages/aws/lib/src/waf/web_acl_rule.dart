// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_action.dart';
import 'web_acl_rule_override_action.dart';

class WebAclRule {
  /// The action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Not used if `type` is `GROUP`.
  final WebAclRuleAction? action;

  /// Override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Only used if `type` is `GROUP`.
  final WebAclRuleOverrideAction? overrideAction;

  /// Specifies the order in which the rules in a WebACL are evaluated.
  /// Rules with a lower value are evaluated before rules with a higher value.
  final int priority;

  /// ID of the associated WAF (Global) rule (e.g., `aws.waf.Rule`). WAF (Regional) rules cannot be used.
  final String ruleId;

  /// The rule type, either `REGULAR`, as defined by [Rule](http://docs.aws.amazon.com/waf/latest/APIReference/API_Rule.html), `RATE_BASED`, as defined by [RateBasedRule](http://docs.aws.amazon.com/waf/latest/APIReference/API_RateBasedRule.html), or `GROUP`, as defined by [RuleGroup](https://docs.aws.amazon.com/waf/latest/APIReference/API_RuleGroup.html). The default is REGULAR. If you add a RATE_BASED rule, you need to set `type` as `RATE_BASED`. If you add a GROUP rule, you need to set `type` as `GROUP`.
  final String? type;

  /// Creates a new [WebAclRule].
  /// [action] The action that CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Not used if `type` is `GROUP`.
  /// [overrideAction] Override the action that a group requests CloudFront or AWS WAF takes when a web request matches the conditions in the rule. Only used if `type` is `GROUP`.
  /// [priority] Specifies the order in which the rules in a WebACL are evaluated.
  /// [ruleId] ID of the associated WAF (Global) rule (e.g., `aws.waf.Rule`). WAF (Regional) rules cannot be used.
  /// [type] The rule type, either `REGULAR`, as defined by [Rule](http://docs.aws.amazon.com/waf/latest/APIReference/API_Rule.html), `RATE_BASED`, as defined by [RateBasedRule](http://docs.aws.amazon.com/waf/latest/APIReference/API_RateBasedRule.html), or `GROUP`, as defined by [RuleGroup](https://docs.aws.amazon.com/waf/latest/APIReference/API_RuleGroup.html). The default is REGULAR. If you add a RATE_BASED rule, you need to set `type` as `RATE_BASED`. If you add a GROUP rule, you need to set `type` as `GROUP`.
  WebAclRule({
    this.action,
    this.overrideAction,
    required this.priority,
    required this.ruleId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final overrideActionValue = overrideAction;
    if (overrideActionValue != null) {
      map['overrideAction'] = overrideActionValue.toMap();
    }
    map['priority'] = priority;
    map['ruleId'] = ruleId;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory WebAclRule.fromMap(Map<String, dynamic> map) {
    return WebAclRule(
      action: map['action'] == null
          ? null
          : WebAclRuleAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      overrideAction: map['overrideAction'] == null
          ? null
          : WebAclRuleOverrideAction.fromMap(
              (map['overrideAction'] as Map).cast<String, dynamic>()),
      priority: map['priority'] as int,
      ruleId: map['ruleId'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
