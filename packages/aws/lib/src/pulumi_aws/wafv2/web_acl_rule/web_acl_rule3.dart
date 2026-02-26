// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../web_acl_rule_action/web_acl_rule_action3.dart';
import '../web_acl_rule_captcha_config/web_acl_rule_captcha_config.dart';
import '../web_acl_rule_challenge_config/web_acl_rule_challenge_config.dart';
import '../web_acl_rule_override_action/web_acl_rule_override_action3.dart';
import '../web_acl_rule_rule_label/web_acl_rule_rule_label.dart';
import '../web_acl_rule_statement/web_acl_rule_statement.dart';
import '../web_acl_rule_visibility_config/web_acl_rule_visibility_config.dart';

class WebAclRule3 {
  /// Action that AWS WAF should take on a web request when it matches the rule's statement. This is used only for rules whose **statements do not reference a rule group**. See <span pulumi-lang-nodejs="`action`" pulumi-lang-dotnet="`Action`" pulumi-lang-go="`action`" pulumi-lang-python="`action`" pulumi-lang-yaml="`action`" pulumi-lang-java="`action`">`action`</span> for details.
  final WebAclRuleAction3? action;

  /// Specifies how AWS WAF should handle CAPTCHA evaluations. See <span pulumi-lang-nodejs="`captchaConfig`" pulumi-lang-dotnet="`CaptchaConfig`" pulumi-lang-go="`captchaConfig`" pulumi-lang-python="`captcha_config`" pulumi-lang-yaml="`captchaConfig`" pulumi-lang-java="`captchaConfig`">`captcha_config`</span> below for details.
  final WebAclRuleCaptchaConfig? captchaConfig;

  /// Specifies how AWS WAF should handle Challenge evaluations on the rule level. See <span pulumi-lang-nodejs="`challengeConfig`" pulumi-lang-dotnet="`ChallengeConfig`" pulumi-lang-go="`challengeConfig`" pulumi-lang-python="`challenge_config`" pulumi-lang-yaml="`challengeConfig`" pulumi-lang-java="`challengeConfig`">`challenge_config`</span> below for details.
  final WebAclRuleChallengeConfig? challengeConfig;

  /// Friendly name of the rule. Note that the provider assumes that rules with names matching this pattern, `^ShieldMitigationRuleGroup_<account-id>_<web-acl-guid>_.*`, are AWS-added for [automatic application layer DDoS mitigation activities](https://docs.aws.amazon.com/waf/latest/developerguide/ddos-automatic-app-layer-response-rg.html). Such rules will be ignored by the provider unless you explicitly include them in your configuration (for example, by using the AWS CLI to discover their properties and creating matching configuration). However, since these rules are owned and managed by AWS, you may get permission errors.
  final String name;

  /// Override action to apply to the rules in a rule group. Used only for rule **statements that reference a rule group**, like <span pulumi-lang-nodejs="`ruleGroupReferenceStatement`" pulumi-lang-dotnet="`RuleGroupReferenceStatement`" pulumi-lang-go="`ruleGroupReferenceStatement`" pulumi-lang-python="`rule_group_reference_statement`" pulumi-lang-yaml="`ruleGroupReferenceStatement`" pulumi-lang-java="`ruleGroupReferenceStatement`">`rule_group_reference_statement`</span> and <span pulumi-lang-nodejs="`managedRuleGroupStatement`" pulumi-lang-dotnet="`ManagedRuleGroupStatement`" pulumi-lang-go="`managedRuleGroupStatement`" pulumi-lang-python="`managed_rule_group_statement`" pulumi-lang-yaml="`managedRuleGroupStatement`" pulumi-lang-java="`managedRuleGroupStatement`">`managed_rule_group_statement`</span>. See <span pulumi-lang-nodejs="`overrideAction`" pulumi-lang-dotnet="`OverrideAction`" pulumi-lang-go="`overrideAction`" pulumi-lang-python="`override_action`" pulumi-lang-yaml="`overrideAction`" pulumi-lang-java="`overrideAction`">`override_action`</span> below for details.
  final WebAclRuleOverrideAction3? overrideAction;

  /// If you define more than one Rule in a WebACL, AWS WAF evaluates each request against the <span pulumi-lang-nodejs="`rules`" pulumi-lang-dotnet="`Rules`" pulumi-lang-go="`rules`" pulumi-lang-python="`rules`" pulumi-lang-yaml="`rules`" pulumi-lang-java="`rules`">`rules`</span> in order based on the value of <span pulumi-lang-nodejs="`priority`" pulumi-lang-dotnet="`Priority`" pulumi-lang-go="`priority`" pulumi-lang-python="`priority`" pulumi-lang-yaml="`priority`" pulumi-lang-java="`priority`">`priority`</span>. AWS WAF processes rules with lower priority first.
  final int priority;

  /// Labels to apply to web requests that match the rule match statement. See <span pulumi-lang-nodejs="`ruleLabel`" pulumi-lang-dotnet="`RuleLabel`" pulumi-lang-go="`ruleLabel`" pulumi-lang-python="`rule_label`" pulumi-lang-yaml="`ruleLabel`" pulumi-lang-java="`ruleLabel`">`rule_label`</span> below for details.
  final List<WebAclRuleRuleLabel>? ruleLabels;

  /// The AWS WAF processing statement for the rule, for example <span pulumi-lang-nodejs="`byteMatchStatement`" pulumi-lang-dotnet="`ByteMatchStatement`" pulumi-lang-go="`byteMatchStatement`" pulumi-lang-python="`byte_match_statement`" pulumi-lang-yaml="`byteMatchStatement`" pulumi-lang-java="`byteMatchStatement`">`byte_match_statement`</span> or <span pulumi-lang-nodejs="`geoMatchStatement`" pulumi-lang-dotnet="`GeoMatchStatement`" pulumi-lang-go="`geoMatchStatement`" pulumi-lang-python="`geo_match_statement`" pulumi-lang-yaml="`geoMatchStatement`" pulumi-lang-java="`geoMatchStatement`">`geo_match_statement`</span>. See <span pulumi-lang-nodejs="`statement`" pulumi-lang-dotnet="`Statement`" pulumi-lang-go="`statement`" pulumi-lang-python="`statement`" pulumi-lang-yaml="`statement`" pulumi-lang-java="`statement`">`statement`</span> below for details.
  final WebAclRuleStatement statement;

  /// Defines and enables Amazon CloudWatch metrics and web request sample collection. See <span pulumi-lang-nodejs="`visibilityConfig`" pulumi-lang-dotnet="`VisibilityConfig`" pulumi-lang-go="`visibilityConfig`" pulumi-lang-python="`visibility_config`" pulumi-lang-yaml="`visibilityConfig`" pulumi-lang-java="`visibilityConfig`">`visibility_config`</span> below for details.
  final WebAclRuleVisibilityConfig visibilityConfig;

  WebAclRule3({
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
          Input.encodeList<WebAclRuleRuleLabel, Map<String, dynamic>>(
              ruleLabelsValue, (value) => value.toMap());
    }
    map['statement'] = statement.toMap();
    map['visibilityConfig'] = visibilityConfig.toMap();
    return map;
  }

  factory WebAclRule3.fromMap(Map<String, dynamic> map) {
    return WebAclRule3(
      action: map['action'] == null
          ? null
          : WebAclRuleAction3.fromMap(
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
          : WebAclRuleOverrideAction3.fromMap(
              (map['overrideAction'] as Map).cast<String, dynamic>()),
      priority: map['priority'] as int,
      ruleLabels: map['ruleLabels'] == null
          ? null
          : Input.decodeList<WebAclRuleRuleLabel>(
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
