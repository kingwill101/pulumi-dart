// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action.dart';
import 'rule_group_rule_captcha_config.dart';
import 'rule_group_rule_rule_label.dart';
import 'rule_group_rule_statement.dart';
import 'rule_group_rule_visibility_config.dart';

class RuleGroupRule {
  /// The action that AWS WAF should take on a web request when it matches the rule's statement. Settings at the `aws.wafv2.WebAcl` level can override the rule action setting. See Action below for details.
  final pulumi.Input<RuleGroupRuleAction> action;
  /// Specifies how AWS WAF should handle CAPTCHA evaluations. See Captcha Configuration below for details.
  final pulumi.Input<RuleGroupRuleCaptchaConfig>? captchaConfig;
  /// A friendly name of the rule.
  final pulumi.Input<String> name;
  /// If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  final pulumi.Input<int> priority;
  /// Labels to apply to web requests that match the rule match statement. See Rule Label below for details.
  final pulumi.Input<List<RuleGroupRuleRuleLabel>>? ruleLabels;
  /// The AWS WAF processing statement for the rule, for example `byte_match_statement` or `geo_match_statement`. See Statement below for details.
  final pulumi.Input<RuleGroupRuleStatement> statement;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
  final pulumi.Input<RuleGroupRuleVisibilityConfig> visibilityConfig;

  /// Creates a new [RuleGroupRule].
  /// [action] The action that AWS WAF should take on a web request when it matches the rule's statement. Settings at the `aws.wafv2.WebAcl` level can override the rule action setting. See Action below for details.
  /// [captchaConfig] Specifies how AWS WAF should handle CAPTCHA evaluations. See Captcha Configuration below for details.
  /// [name] A friendly name of the rule.
  /// [priority] If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  /// [ruleLabels] Labels to apply to web requests that match the rule match statement. See Rule Label below for details.
  /// [statement] The AWS WAF processing statement for the rule, for example `byte_match_statement` or `geo_match_statement`. See Statement below for details.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See Visibility Configuration below for details.
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
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RuleGroupRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'captchaConfig': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleCaptchaConfig, Map<String, dynamic>>(captchaConfig, (value) => value.toMap()),
      'name': name,
      'priority': priority,
      'ruleLabels': ?pulumi.Input.mapOptionalInputValue<List<RuleGroupRuleRuleLabel>, List<Map<String, dynamic>>>(ruleLabels, (value) => pulumi.Input.encodeList<RuleGroupRuleRuleLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statement': pulumi.Input.mapInputValue<RuleGroupRuleStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
      'visibilityConfig': pulumi.Input.mapInputValue<RuleGroupRuleVisibilityConfig, Map<String, dynamic>>(visibilityConfig, (value) => value.toMap()),
    };
  }

  factory RuleGroupRule.fromMap(Map<String, dynamic> map) {
    return RuleGroupRule(
      action: (RuleGroupRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      captchaConfig: map['captchaConfig'] == null ? null : (RuleGroupRuleCaptchaConfig.fromMap((map['captchaConfig'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      ruleLabels: map['ruleLabels'] == null ? null : (pulumi.Input.decodeList<RuleGroupRuleRuleLabel>(map['ruleLabels'], (value) => RuleGroupRuleRuleLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statement: (RuleGroupRuleStatement.fromMap((map['statement'] as Map).cast<String, dynamic>())).input(),
      visibilityConfig: (RuleGroupRuleVisibilityConfig.fromMap((map['visibilityConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

