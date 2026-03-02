// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_group_rule_action_allow.dart';
import 'rule_group_rule_action_block.dart';
import 'rule_group_rule_action_captcha.dart';
import 'rule_group_rule_action_challenge.dart';
import 'rule_group_rule_action_count.dart';

class RuleGroupRuleAction {
  /// Instructs AWS WAF to allow the web request. See Allow below for details.
  final pulumi.Input<RuleGroupRuleActionAllow>? allow;
  /// Instructs AWS WAF to block the web request. See Block below for details.
  final pulumi.Input<RuleGroupRuleActionBlock>? block;
  /// Instructs AWS WAF to run a `CAPTCHA` check against the web request. See Captcha below for details.
  final pulumi.Input<RuleGroupRuleActionCaptcha>? captcha;
  /// Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See Challenge below for details.
  final pulumi.Input<RuleGroupRuleActionChallenge>? challenge;
  /// Instructs AWS WAF to count the web request and allow it. See Count below for details.
  final pulumi.Input<RuleGroupRuleActionCount>? count;

  /// Creates a new [RuleGroupRuleAction].
  /// [allow] Instructs AWS WAF to allow the web request. See Allow below for details.
  /// [block] Instructs AWS WAF to block the web request. See Block below for details.
  /// [captcha] Instructs AWS WAF to run a `CAPTCHA` check against the web request. See Captcha below for details.
  /// [challenge] Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See Challenge below for details.
  /// [count] Instructs AWS WAF to count the web request and allow it. See Count below for details.
  RuleGroupRuleAction({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'captcha': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionCaptcha, Map<String, dynamic>>(captcha, (value) => value.toMap()),
      'challenge': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionChallenge, Map<String, dynamic>>(challenge, (value) => value.toMap()),
      'count': ?pulumi.Input.mapOptionalInputValue<RuleGroupRuleActionCount, Map<String, dynamic>>(count, (value) => value.toMap()),
    };
  }

  factory RuleGroupRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleAction(
      allow: map['allow'] == null ? null : ((RuleGroupRuleActionAllow.fromMap((map['allow']! as Map).cast<String, dynamic>())).input()).input(),
      block: map['block'] == null ? null : ((RuleGroupRuleActionBlock.fromMap((map['block']! as Map).cast<String, dynamic>())).input()).input(),
      captcha: map['captcha'] == null ? null : ((RuleGroupRuleActionCaptcha.fromMap((map['captcha']! as Map).cast<String, dynamic>())).input()).input(),
      challenge: map['challenge'] == null ? null : ((RuleGroupRuleActionChallenge.fromMap((map['challenge']! as Map).cast<String, dynamic>())).input()).input(),
      count: map['count'] == null ? null : ((RuleGroupRuleActionCount.fromMap((map['count']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

