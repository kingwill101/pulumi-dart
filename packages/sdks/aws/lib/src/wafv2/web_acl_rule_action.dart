// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_allow.dart';
import 'web_acl_rule_action_block.dart';
import 'web_acl_rule_action_captcha.dart';
import 'web_acl_rule_action_challenge.dart';
import 'web_acl_rule_action_count.dart';

class WebAclRuleAction {
  /// Instructs AWS WAF to allow the web request. See `allow` below for details.
  final pulumi.Input<WebAclRuleActionAllow>? allow;
  /// Instructs AWS WAF to block the web request. See `block` below for details.
  final pulumi.Input<WebAclRuleActionBlock>? block;
  /// Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  final pulumi.Input<WebAclRuleActionCaptcha>? captcha;
  /// Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See `challenge` below for details.
  final pulumi.Input<WebAclRuleActionChallenge>? challenge;
  /// Instructs AWS WAF to count the web request and allow it. See `count` below for details.
  final pulumi.Input<WebAclRuleActionCount>? count;

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
      'allow': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'captcha': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionCaptcha, Map<String, dynamic>>(captcha, (value) => value.toMap()),
      'challenge': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionChallenge, Map<String, dynamic>>(challenge, (value) => value.toMap()),
      'count': ?pulumi.Input.mapOptionalInputValue<WebAclRuleActionCount, Map<String, dynamic>>(count, (value) => value.toMap()),
    };
  }

  factory WebAclRuleAction.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction(
      allow: map['allow'] == null ? null : ((WebAclRuleActionAllow.fromMap((map['allow']! as Map).cast<String, dynamic>())).input()).input(),
      block: map['block'] == null ? null : ((WebAclRuleActionBlock.fromMap((map['block']! as Map).cast<String, dynamic>())).input()).input(),
      captcha: map['captcha'] == null ? null : ((WebAclRuleActionCaptcha.fromMap((map['captcha']! as Map).cast<String, dynamic>())).input()).input(),
      challenge: map['challenge'] == null ? null : ((WebAclRuleActionChallenge.fromMap((map['challenge']! as Map).cast<String, dynamic>())).input()).input(),
      count: map['count'] == null ? null : ((WebAclRuleActionCount.fromMap((map['count']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

