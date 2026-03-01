// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action.dart';
import 'rule_group_rule_captcha_config.dart';
import 'rule_group_rule_rule_label.dart';
import 'rule_group_rule_statement.dart';
import 'rule_group_rule_visibility_config.dart';

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
      'action': action.toMap(),
      'captchaConfig': ?captchaConfig == null ? null : captchaConfig!.toMap(),
      'name': name,
      'priority': priority,
      'ruleLabels': ?ruleLabels == null
          ? null
          : pulumi.Input.encodeList<
              RuleGroupRuleRuleLabel,
              Map<String, dynamic>
            >(ruleLabels!, (value) => value.toMap()),
      'statement': statement.toMap(),
      'visibilityConfig': visibilityConfig.toMap(),
    };
  }

  factory RuleGroupRule.fromMap(Map<String, dynamic> map) {
    return RuleGroupRule(
      action: RuleGroupRuleAction.fromMap(
        (map['action'] as Map).cast<String, dynamic>(),
      ),
      captchaConfig: map['captchaConfig'] == null
          ? null
          : RuleGroupRuleCaptchaConfig.fromMap(
              (map['captchaConfig'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      priority: map['priority'] as int,
      ruleLabels: map['ruleLabels'] == null
          ? null
          : pulumi.Input.decodeList<RuleGroupRuleRuleLabel>(
              map['ruleLabels'],
              (value) => RuleGroupRuleRuleLabel.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      statement: RuleGroupRuleStatement.fromMap(
        (map['statement'] as Map).cast<String, dynamic>(),
      ),
      visibilityConfig: RuleGroupRuleVisibilityConfig.fromMap(
        (map['visibilityConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
