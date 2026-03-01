// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action.dart';
import 'web_acl_rule_captcha_config.dart';
import 'web_acl_rule_challenge_config.dart';
import 'web_acl_rule_override_action.dart';
import 'web_acl_rule_rule_label.dart';
import 'web_acl_rule_statement.dart';
import 'web_acl_rule_visibility_config.dart';

class WebAclRule {
  /// Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose **statements do not reference a rule group**. See `action` for details.
  final WebAclRuleAction? action;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations. See `captcha_config` below for details.
  final WebAclRuleCaptchaConfig? captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the rule level. See `challenge_config` below for details.
  final WebAclRuleChallengeConfig? challengeConfig;

  /// Friendly name of the rule. Note that the provider assumes that rules with names matching this pattern, `^ShieldMitigationRuleGroup_<account-id>_<web-acl-guid>_.*`, are AWS-added for [automatic application layer DDoS mitigation activities](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response-rg.html). Such rules will be ignored by the provider unless you explicitly include them in your configuration (for example, by using the AWS CLI to discover their properties and creating matching configuration). However, since these rules are owned and managed by AWS, you may get permission errors.
  final String name;

  /// Override action to apply to the rules in a rule group. Used only for rule **statements that reference a rule group**, like `rule_group_reference_statement` and `managed_rule_group_statement`. See `override_action` below for details.
  final WebAclRuleOverrideAction? overrideAction;

  /// If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  final int priority;

  /// Labels to apply to web requests that match the rule match statement. See `rule_label` below for details.
  final List<WebAclRuleRuleLabel>? ruleLabels;

  /// The AWS WAF processing statement for the rule, for example `byte_match_statement` or `geo_match_statement`. See `statement` below for details.
  final WebAclRuleStatement statement;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  final WebAclRuleVisibilityConfig visibilityConfig;

  /// Creates a new [WebAclRule].
  /// [action] Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose **statements do not reference a rule group**. See `action` for details.
  /// [captchaConfig] Specifies how AWS WAF should handle CAPTCHA evaluations. See `captcha_config` below for details.
  /// [challengeConfig] Specifies how AWS WAF should handle Challenge evaluations on the rule level. See `challenge_config` below for details.
  /// [name] Friendly name of the rule. Note that the provider assumes that rules with names matching this pattern, `^ShieldMitigationRuleGroup_<account-id>_<web-acl-guid>_.*`, are AWS-added for [automatic application layer DDoS mitigation activities](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response-rg.html). Such rules will be ignored by the provider unless you explicitly include them in your configuration (for example, by using the AWS CLI to discover their properties and creating matching configuration). However, since these rules are owned and managed by AWS, you may get permission errors.
  /// [overrideAction] Override action to apply to the rules in a rule group. Used only for rule **statements that reference a rule group**, like `rule_group_reference_statement` and `managed_rule_group_statement`. See `override_action` below for details.
  /// [priority] If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  /// [ruleLabels] Labels to apply to web requests that match the rule match statement. See `rule_label` below for details.
  /// [statement] The AWS WAF processing statement for the rule, for example `byte_match_statement` or `geo_match_statement`. See `statement` below for details.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  WebAclRule({
    this.action,
    this.captchaConfig,
    this.challengeConfig,
    required this.name,
    this.overrideAction,
    required this.priority,
    this.ruleLabels,
    required this.statement,
    required this.visibilityConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'captchaConfig': ?captchaConfig == null ? null : captchaConfig!.toMap(),
      'challengeConfig': ?challengeConfig == null
          ? null
          : challengeConfig!.toMap(),
      'name': name,
      'overrideAction': ?overrideAction == null
          ? null
          : overrideAction!.toMap(),
      'priority': priority,
      'ruleLabels': ?ruleLabels == null
          ? null
          : pulumi.Input.encodeList<WebAclRuleRuleLabel, Map<String, dynamic>>(
              ruleLabels!,
              (value) => value.toMap(),
            ),
      'statement': statement.toMap(),
      'visibilityConfig': visibilityConfig.toMap(),
    };
  }

  factory WebAclRule.fromMap(Map<String, dynamic> map) {
    return WebAclRule(
      action: map['action'] == null
          ? null
          : WebAclRuleAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>(),
            ),
      captchaConfig: map['captchaConfig'] == null
          ? null
          : WebAclRuleCaptchaConfig.fromMap(
              (map['captchaConfig'] as Map).cast<String, dynamic>(),
            ),
      challengeConfig: map['challengeConfig'] == null
          ? null
          : WebAclRuleChallengeConfig.fromMap(
              (map['challengeConfig'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] as String,
      overrideAction: map['overrideAction'] == null
          ? null
          : WebAclRuleOverrideAction.fromMap(
              (map['overrideAction'] as Map).cast<String, dynamic>(),
            ),
      priority: map['priority'] as int,
      ruleLabels: map['ruleLabels'] == null
          ? null
          : pulumi.Input.decodeList<WebAclRuleRuleLabel>(
              map['ruleLabels'],
              (value) => WebAclRuleRuleLabel.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      statement: WebAclRuleStatement.fromMap(
        (map['statement'] as Map).cast<String, dynamic>(),
      ),
      visibilityConfig: WebAclRuleVisibilityConfig.fromMap(
        (map['visibilityConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
