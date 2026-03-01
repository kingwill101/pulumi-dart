// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_action_allow.dart';
import 'web_acl_rule_action_block.dart';
import 'web_acl_rule_action_captcha.dart';
import 'web_acl_rule_action_challenge.dart';
import 'web_acl_rule_action_count.dart';

class WebAclRuleAction {
  /// Instructs AWS WAF to allow the web request. See `allow` below for details.
  final WebAclRuleActionAllow? allow;
  /// Instructs AWS WAF to block the web request. See `block` below for details.
  final WebAclRuleActionBlock? block;
  /// Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  final WebAclRuleActionCaptcha? captcha;
  /// Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See `challenge` below for details.
  final WebAclRuleActionChallenge? challenge;
  /// Instructs AWS WAF to count the web request and allow it. See `count` below for details.
  final WebAclRuleActionCount? count;

  /// Creates a new [WebAclRuleAction].
  /// [allow] Instructs AWS WAF to allow the web request. See `allow` below for details.
  /// [block] Instructs AWS WAF to block the web request. See `block` below for details.
  /// [captcha] Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  /// [challenge] Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See `challenge` below for details.
  /// [count] Instructs AWS WAF to count the web request and allow it. See `count` below for details.
  WebAclRuleAction({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?allow == null ? null : allow!.toMap(),
      'block': ?block == null ? null : block!.toMap(),
      'captcha': ?captcha == null ? null : captcha!.toMap(),
      'challenge': ?challenge == null ? null : challenge!.toMap(),
      'count': ?count == null ? null : count!.toMap(),
    };
  }

  factory WebAclRuleAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction(
      allow: map['allow'] == null ? null : WebAclRuleActionAllow.fromMap((map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null ? null : WebAclRuleActionBlock.fromMap((map['block'] as Map).cast<String, dynamic>()),
      captcha: map['captcha'] == null ? null : WebAclRuleActionCaptcha.fromMap((map['captcha'] as Map).cast<String, dynamic>()),
      challenge: map['challenge'] == null ? null : WebAclRuleActionChallenge.fromMap((map['challenge'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : WebAclRuleActionCount.fromMap((map['count'] as Map).cast<String, dynamic>()),
    );
  }
}

