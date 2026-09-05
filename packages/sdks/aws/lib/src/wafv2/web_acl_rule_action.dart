// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_action_allow.dart';
import 'web_acl_rule_action_block.dart';
import 'web_acl_rule_action_captcha.dart';
import 'web_acl_rule_action_challenge.dart';
import 'web_acl_rule_action_count.dart';

class WebAclRuleAction {
  /// Allow the request. See Allow below.
  final pulumi.Input<WebAclRuleActionAllow?>? allow;
  /// Block the request. See Block below.
  final pulumi.Input<WebAclRuleActionBlock?>? block;
  /// Present a CAPTCHA challenge. See Captcha below.
  final pulumi.Input<WebAclRuleActionCaptcha?>? captcha;
  /// Present a silent challenge. See Challenge below.
  final pulumi.Input<WebAclRuleActionChallenge?>? challenge;
  /// Count the request without blocking. See Count below.
  final pulumi.Input<WebAclRuleActionCount?>? count;

  /// Creates a new [WebAclRuleAction].
  /// [allow] Allow the request. See Allow below.
  /// [block] Block the request. See Block below.
  /// [captcha] Present a CAPTCHA challenge. See Captcha below.
  /// [challenge] Present a silent challenge. See Challenge below.
  /// [count] Count the request without blocking. See Count below.
  const WebAclRuleAction({
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
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionAllow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      block: (() { final guardedValue = map['block']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captcha: (() { final guardedValue = map['captcha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionCaptcha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      challenge: (() { final guardedValue = map['challenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionChallenge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleActionCount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
