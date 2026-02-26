// ignore_for_file: unused_element, unnecessary_cast

import '../rule_group_rule_action_allow/rule_group_rule_action_allow.dart';
import '../rule_group_rule_action_block/rule_group_rule_action_block.dart';
import '../rule_group_rule_action_captcha/rule_group_rule_action_captcha.dart';
import '../rule_group_rule_action_challenge/rule_group_rule_action_challenge.dart';
import '../rule_group_rule_action_count/rule_group_rule_action_count.dart';

class RuleGroupRuleAction {
  /// Instructs AWS WAF to allow the web request. See Allow below for details.
  final RuleGroupRuleActionAllow? allow;

  /// Instructs AWS WAF to block the web request. See Block below for details.
  final RuleGroupRuleActionBlock? block;

  /// Instructs AWS WAF to run a `CAPTCHA` check against the web request. See Captcha below for details.
  final RuleGroupRuleActionCaptcha? captcha;

  /// Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See Challenge below for details.
  final RuleGroupRuleActionChallenge? challenge;

  /// Instructs AWS WAF to count the web request and allow it. See Count below for details.
  final RuleGroupRuleActionCount? count;

  RuleGroupRuleAction({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowValue = allow;
    if (allowValue != null) {
      map['allow'] = allowValue.toMap();
    }
    final blockValue = block;
    if (blockValue != null) {
      map['block'] = blockValue.toMap();
    }
    final captchaValue = captcha;
    if (captchaValue != null) {
      map['captcha'] = captchaValue.toMap();
    }
    final challengeValue = challenge;
    if (challengeValue != null) {
      map['challenge'] = challengeValue.toMap();
    }
    final countValue = count;
    if (countValue != null) {
      map['count'] = countValue.toMap();
    }
    return map;
  }

  factory RuleGroupRuleAction.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleAction(
      allow: map['allow'] == null
          ? null
          : RuleGroupRuleActionAllow.fromMap(
              (map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null
          ? null
          : RuleGroupRuleActionBlock.fromMap(
              (map['block'] as Map).cast<String, dynamic>()),
      captcha: map['captcha'] == null
          ? null
          : RuleGroupRuleActionCaptcha.fromMap(
              (map['captcha'] as Map).cast<String, dynamic>()),
      challenge: map['challenge'] == null
          ? null
          : RuleGroupRuleActionChallenge.fromMap(
              (map['challenge'] as Map).cast<String, dynamic>()),
      count: map['count'] == null
          ? null
          : RuleGroupRuleActionCount.fromMap(
              (map['count'] as Map).cast<String, dynamic>()),
    );
  }
}
