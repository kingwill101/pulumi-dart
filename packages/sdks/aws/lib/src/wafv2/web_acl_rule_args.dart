// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action.dart';
import 'web_acl_rule_captcha_config.dart';
import 'web_acl_rule_challenge_config.dart';
import 'web_acl_rule_override_action.dart';
import 'web_acl_rule_rule_label.dart';
import 'web_acl_rule_statement.dart';
import 'web_acl_rule_timeouts.dart';
import 'web_acl_rule_visibility_config.dart';

/// {@template pulumi_wafv2_web_acl_rule_web_acl_rule_args_doc}
/// The set of arguments for WebAclRule.
/// {@endtemplate}
/// {@macro pulumi_wafv2_web_acl_rule_web_acl_rule_args_doc}
class WebAclRuleArgs {
  /// Action to take when the rule matches. See Action below. Conflicts with `overrideAction`.
  final pulumi.Input<WebAclRuleAction>? action;
  /// CAPTCHA configuration that overrides the web ACL level setting. See Captcha Config below.
  final pulumi.Input<WebAclRuleCaptchaConfig>? captchaConfig;
  /// Challenge configuration that overrides the web ACL level setting. See Challenge Config below.
  final pulumi.Input<WebAclRuleChallengeConfig>? challengeConfig;
  /// Name of the rule. Must be unique within the Web ACL.
  final pulumi.Input<String>? name;
  /// Override action for managed rule groups. See Override Action below. Conflicts with `action`.
  final pulumi.Input<WebAclRuleOverrideAction>? overrideAction;
  /// Rule priority. Rules with lower priority are evaluated first.
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Labels to apply to matching web requests. See Rule Label below.
  final pulumi.Input<List<WebAclRuleRuleLabel>>? ruleLabels;
  /// Rule statement. See Statement below.
  final pulumi.Input<WebAclRuleStatement>? statement;
  final pulumi.Input<WebAclRuleTimeouts>? timeouts;
  /// CloudWatch metrics configuration. See Visibility Config below.
  final pulumi.Input<WebAclRuleVisibilityConfig>? visibilityConfig;
  /// ARN of the Web ACL to add the rule to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> webAclArn;

  /// Creates a new [WebAclRuleArgs].
  /// [action] Action to take when the rule matches. See Action below. Conflicts with `overrideAction`.
  /// [captchaConfig] CAPTCHA configuration that overrides the web ACL level setting. See Captcha Config below.
  /// [challengeConfig] Challenge configuration that overrides the web ACL level setting. See Challenge Config below.
  /// [name] Name of the rule. Must be unique within the Web ACL.
  /// [overrideAction] Override action for managed rule groups. See Override Action below. Conflicts with `action`.
  /// [priority] Rule priority. Rules with lower priority are evaluated first.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleLabels] Labels to apply to matching web requests. See Rule Label below.
  /// [statement] Rule statement. See Statement below.
  /// [timeouts] Optional.
  /// [visibilityConfig] CloudWatch metrics configuration. See Visibility Config below.
  /// [webAclArn] ARN of the Web ACL to add the rule to.
  const WebAclRuleArgs({
    this.action,
    this.captchaConfig,
    this.challengeConfig,
    this.name,
    this.overrideAction,
    required this.priority,
    this.region,
    this.ruleLabels,
    this.statement,
    this.timeouts,
    this.visibilityConfig,
    required this.webAclArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<WebAclRuleAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'captchaConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleCaptchaConfig, Map<String, dynamic>>(captchaConfig, (value) => value.toMap()),
      'challengeConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleChallengeConfig, Map<String, dynamic>>(challengeConfig, (value) => value.toMap()),
      'name': ?name,
      'overrideAction': ?pulumi.Input.mapOptionalInputValue<WebAclRuleOverrideAction, Map<String, dynamic>>(overrideAction, (value) => value.toMap()),
      'priority': priority,
      'region': ?region,
      'ruleLabels': ?pulumi.Input.mapOptionalInputValue<List<WebAclRuleRuleLabel>, List<Map<String, dynamic>>>(ruleLabels, (value) => pulumi.Input.encodeList<WebAclRuleRuleLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statement': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatement, Map<String, dynamic>>(statement, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<WebAclRuleTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'visibilityConfig': ?pulumi.Input.mapOptionalInputValue<WebAclRuleVisibilityConfig, Map<String, dynamic>>(visibilityConfig, (value) => value.toMap()),
      'webAclArn': webAclArn,
    };
  }

  factory WebAclRuleArgs.fromMap(Map<String, dynamic> map) {
    return WebAclRuleArgs(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captchaConfig: (() { final guardedValue = map['captchaConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleCaptchaConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      challengeConfig: (() { final guardedValue = map['challengeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleChallengeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overrideAction: (() { final guardedValue = map['overrideAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleOverrideAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleLabels: (() { final guardedValue = map['ruleLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WebAclRuleRuleLabel>(guardedValue, (value) => WebAclRuleRuleLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statement: (() { final guardedValue = map['statement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      visibilityConfig: (() { final guardedValue = map['visibilityConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleVisibilityConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webAclArn: pulumi.Input.fromValue(map['webAclArn'] as String),
    );
  }
}
