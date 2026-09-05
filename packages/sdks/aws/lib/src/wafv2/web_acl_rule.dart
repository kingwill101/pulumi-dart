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
  final pulumi.Input<WebAclRuleAction?>? action;
  /// Specifies how AWS WAF should handle CAPTCHA evaluations. See `captchaConfig` below for details.
  final pulumi.Input<WebAclRuleCaptchaConfig?>? captchaConfig;
  /// Specifies how AWS WAF should handle Challenge evaluations on the rule level. See `challengeConfig` below for details.
  final pulumi.Input<WebAclRuleChallengeConfig?>? challengeConfig;
  /// Friendly name of the rule. Note that the provider assumes that rules with names matching this pattern, `^ShieldMitigationRuleGroup_&lt;account-id&gt;_&lt;web-acl-guid&gt;_.*`, are AWS-added for [automatic application layer DDoS mitigation activities](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response-rg.html). Such rules will be ignored by the provider unless you explicitly include them in your configuration (for example, by using the AWS CLI to discover their properties and creating matching configuration). However, since these rules are owned and managed by AWS, you may get permission errors.
  final pulumi.Input<String> name;
  /// Override action to apply to the rules in a rule group. Used only for rule **statements that reference a rule group**, like `ruleGroupReferenceStatement` and `managedRuleGroupStatement`. See `overrideAction` below for details.
  final pulumi.Input<WebAclRuleOverrideAction?>? overrideAction;
  /// If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  final pulumi.Input<int> priority;
  /// Labels to apply to web requests that match the rule match statement. See `ruleLabel` below for details.
  final pulumi.Input<List<WebAclRuleRuleLabel>?>? ruleLabels;
  /// The AWS WAF processing statement for the rule, for example `byteMatchStatement` or `geoMatchStatement`. See `statement` below for details.
  final pulumi.Input<WebAclRuleStatement> statement;
  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibilityConfig` below for details.
  final pulumi.Input<WebAclRuleVisibilityConfig> visibilityConfig;

  /// Creates a new [WebAclRule].
  /// [action] Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose **statements do not reference a rule group**. See `action` for details.
  /// [captchaConfig] Specifies how AWS WAF should handle CAPTCHA evaluations. See `captchaConfig` below for details.
  /// [challengeConfig] Specifies how AWS WAF should handle Challenge evaluations on the rule level. See `challengeConfig` below for details.
  /// [name] Friendly name of the rule. Note that the provider assumes that rules with names matching this pattern, `^ShieldMitigationRuleGroup_&lt;account-id&gt;_&lt;web-acl-guid&gt;_.*`, are AWS-added for [automatic application layer DDoS mitigation activities](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response-rg.html). Such rules will be ignored by the provider unless you explicitly include them in your configuration (for example, by using the AWS CLI to discover their properties and creating matching configuration). However, since these rules are owned and managed by AWS, you may get permission errors.
  /// [overrideAction] Override action to apply to the rules in a rule group. Used only for rule **statements that reference a rule group**, like `ruleGroupReferenceStatement` and `managedRuleGroupStatement`. See `overrideAction` below for details.
  /// [priority] If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the `rules` in order based on the value of `priority`. AWS WAF processes rules with lower priority first.
  /// [ruleLabels] Labels to apply to web requests that match the rule match statement. See `ruleLabel` below for details.
  /// [statement] The AWS WAF processing statement for the rule, for example `byteMatchStatement` or `geoMatchStatement`. See `statement` below for details.
  /// [visibilityConfig] Defines and enables Amazon CloudWatch metrics and web request sample collection. See `visibilityConfig` below for details.
  const WebAclRule({
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
      'action': ?pulumi.Input.mapOptionalInputValue<WebAclRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'captchaConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleCaptchaConfig, Map<String, dynamic>>(captchaConfig, (value) => value.toMap()),
      'challengeConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleChallengeConfig, Map<String, dynamic>>(challengeConfig, (value) => value.toMap()),
      'name': name,
      'overrideAction': ?pulumi.Input.mapOptionalInputValue<WebAclRuleOverrideAction, Map<String, dynamic>>(overrideAction, (value) => value.toMap()),
      'priority': priority,
      'ruleLabels': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleRuleLabel>, List<Map<String, dynamic>>>(ruleLabels, (value) => pulumi.Input.encodeList<WebAclRuleRuleLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statement': pulumi.Input.mapInputValue<WebAclRuleStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
      'visibilityConfig': pulumi.Input.mapInputValue<WebAclRuleVisibilityConfig, Map<String, dynamic>>(visibilityConfig, (value) => value.toMap()),
    };
  }

  factory WebAclRule.fromMap(Map<String, dynamic> map) {
    return WebAclRule(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captchaConfig: (() { final guardedValue = map['captchaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      challengeConfig: (() { final guardedValue = map['challengeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      overrideAction: (() { final guardedValue = map['overrideAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      ruleLabels: (() { final guardedValue = map['ruleLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleRuleLabel>(guardedValue, (value) => WebAclRuleRuleLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statement: pulumi.Input.fromValue(WebAclRuleStatement.fromMap((map['statement']! as Map).cast<String, dynamic>())),
      visibilityConfig: pulumi.Input.fromValue(WebAclRuleVisibilityConfig.fromMap((map['visibilityConfig']! as Map).cast<String, dynamic>())),
    );
  }
}
