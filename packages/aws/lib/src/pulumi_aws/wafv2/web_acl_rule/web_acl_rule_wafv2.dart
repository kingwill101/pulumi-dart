// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../web_acl_rule_action/web_acl_rule_action_wafv2.dart';
import '../web_acl_rule_captcha_config/web_acl_rule_captcha_config.dart';
import '../web_acl_rule_challenge_config/web_acl_rule_challenge_config.dart';
import '../web_acl_rule_override_action/web_acl_rule_override_action_wafv2.dart';
import '../web_acl_rule_rule_label/web_acl_rule_rule_label.dart';
import '../web_acl_rule_statement/web_acl_rule_statement.dart';
import '../web_acl_rule_visibility_config/web_acl_rule_visibility_config.dart';

class WebAclRuleWafv2 {
  /// Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose **statements do not reference a rule group**. See `action` for details.
  final WebAclRuleActionWafv2? action;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations. See `captcha_config` below for details.
  final WebAclRuleCaptchaConfig? captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the rule level. See `challenge_config` below for details.
  final WebAclRuleChallengeConfig? challengeConfig;

  /// Friendly name of the rule. Note that the provider assumes that rules with names matching this pattern, `^ShieldMitigationRuleGroup_<account-id>_<web-acl-guid>_.*`, are AWS-added for [automatic application layer DDoS mitigation activities](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response-rg.html). Such rules will be ignored by the provider unless you explicitly include them in your configuration (for example, by using the AWS CLI to discover their properties and creating matching configuration). However, since these rules are owned and managed by AWS, you may get permission errors.
  final String name;

  /// Override action to apply to the rules in a rule group. Used only for rule **statements that reference a rule group**, like `rule_group_reference_statement` and `managed_rule_group_statement`. See `override_action` below for details.
  final WebAclRuleOverrideActionWafv2? overrideAction;

  /// If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  final int priority;

  /// Labels to apply to web requests that match the rule match statement. See `rule_label` below for details.
  final List<WebAclRuleRuleLabel>? ruleLabels;

  /// The AWS WAF processing statement for the rule, for example `byte_match_statement` or `geo_match_statement`. See `statement` below for details.
  final WebAclRuleStatement statement;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibility_config` below for details.
  final WebAclRuleVisibilityConfig visibilityConfig;

  WebAclRuleWafv2({
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
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final captchaConfigValue = captchaConfig;
    if (captchaConfigValue != null) {
      map['captchaConfig'] = captchaConfigValue.toMap();
    }
    final challengeConfigValue = challengeConfig;
    if (challengeConfigValue != null) {
      map['challengeConfig'] = challengeConfigValue.toMap();
    }
    map['name'] = name;
    final overrideActionValue = overrideAction;
    if (overrideActionValue != null) {
      map['overrideAction'] = overrideActionValue.toMap();
    }
    map['priority'] = priority;
    final ruleLabelsValue = ruleLabels;
    if (ruleLabelsValue != null) {
      map['ruleLabels'] =
          pulumi.Input.encodeList<WebAclRuleRuleLabel, Map<String, dynamic>>(
              ruleLabelsValue, (value) => value.toMap());
    }
    map['statement'] = statement.toMap();
    map['visibilityConfig'] = visibilityConfig.toMap();
    return map;
  }

  factory WebAclRuleWafv2.fromMap(Map<String, dynamic> map) {
    return WebAclRuleWafv2(
      action: map['action'] == null
          ? null
          : WebAclRuleActionWafv2.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      captchaConfig: map['captchaConfig'] == null
          ? null
          : WebAclRuleCaptchaConfig.fromMap(
              (map['captchaConfig'] as Map).cast<String, dynamic>()),
      challengeConfig: map['challengeConfig'] == null
          ? null
          : WebAclRuleChallengeConfig.fromMap(
              (map['challengeConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      overrideAction: map['overrideAction'] == null
          ? null
          : WebAclRuleOverrideActionWafv2.fromMap(
              (map['overrideAction'] as Map).cast<String, dynamic>()),
      priority: map['priority'] as int,
      ruleLabels: map['ruleLabels'] == null
          ? null
          : pulumi.Input.decodeList<WebAclRuleRuleLabel>(
              map['ruleLabels'],
              (value) => WebAclRuleRuleLabel.fromMap(
                  (value as Map).cast<String, dynamic>())),
      statement: WebAclRuleStatement.fromMap(
          (map['statement'] as Map).cast<String, dynamic>()),
      visibilityConfig: WebAclRuleVisibilityConfig.fromMap(
          (map['visibilityConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
