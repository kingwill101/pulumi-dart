// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../rule_group_rule_action/rule_group_rule_action.dart';
import '../rule_group_rule_captcha_config/rule_group_rule_captcha_config.dart';
import '../rule_group_rule_rule_label/rule_group_rule_rule_label.dart';
import '../rule_group_rule_statement/rule_group_rule_statement.dart';
import '../rule_group_rule_visibility_config/rule_group_rule_visibility_config.dart';

class RuleGroupRule {
  /// The action that AWS WAF should take on a web request when it matches the rule's statement. Settings at the `aws.wafv2.WebAcl` level can override the rule action setting. See Action below for details.
  final RuleGroupRuleAction action;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations. See Captcha Configuration below for details.
  final RuleGroupRuleCaptchaConfig? captchaConfig;

  /// A friendly name of the rule.
  final String name;

  /// If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  final int priority;

  /// Labels to apply to web requests that match the rule match statement. See Rule Label below for details.
  final List<RuleGroupRuleRuleLabel>? ruleLabels;

  /// The AWS WAF processing statement for the rule, for example `byte_match_statement` or `geo_match_statement`. See Statement below for details.
  final RuleGroupRuleStatement statement;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  final RuleGroupRuleVisibilityConfig visibilityConfig;

  RuleGroupRule({
    required this.action,
    this.captchaConfig,
    required this.name,
    required this.priority,
    this.ruleLabels,
    required this.statement,
    required this.visibilityConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final captchaConfigValue = captchaConfig;
    if (captchaConfigValue != null) {
      map['captchaConfig'] = captchaConfigValue.toMap();
    }
    map['name'] = name;
    map['priority'] = priority;
    final ruleLabelsValue = ruleLabels;
    if (ruleLabelsValue != null) {
      map['ruleLabels'] =
          pulumi.Input.encodeList<RuleGroupRuleRuleLabel, Map<String, dynamic>>(
              ruleLabelsValue, (value) => value.toMap());
    }
    map['statement'] = statement.toMap();
    map['visibilityConfig'] = visibilityConfig.toMap();
    return map;
  }

  factory RuleGroupRule.fromMap(Map<String, dynamic> map) {
    return RuleGroupRule(
      action: RuleGroupRuleAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      captchaConfig: map['captchaConfig'] == null
          ? null
          : RuleGroupRuleCaptchaConfig.fromMap(
              (map['captchaConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      priority: map['priority'] as int,
      ruleLabels: map['ruleLabels'] == null
          ? null
          : pulumi.Input.decodeList<RuleGroupRuleRuleLabel>(
              map['ruleLabels'],
              (value) => RuleGroupRuleRuleLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statement: RuleGroupRuleStatement.fromMap(
          (map['statement'] as Map).cast<String, dynamic>()),
      visibilityConfig: RuleGroupRuleVisibilityConfig.fromMap(
          (map['visibilityConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
