// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_action_allow/web_acl_rule_action_allow.dart';
import '../web_acl_rule_action_block/web_acl_rule_action_block.dart';
import '../web_acl_rule_action_captcha/web_acl_rule_action_captcha.dart';
import '../web_acl_rule_action_challenge/web_acl_rule_action_challenge.dart';
import '../web_acl_rule_action_count/web_acl_rule_action_count.dart';

class WebAclRuleAction3 {
  /// Instructs AWS WAF to allow the web request. See <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> below for details.
  final WebAclRuleActionAllow? allow;

  /// Instructs AWS WAF to block the web request. See <span pulumi-lang-nodejs="`block`" pulumi-lang-dotnet="`Block`" pulumi-lang-go="`block`" pulumi-lang-python="`block`" pulumi-lang-yaml="`block`" pulumi-lang-java="`block`">`block`</span> below for details.
  final WebAclRuleActionBlock? block;

  /// Instructs AWS WAF to run a Captcha check against the web request. See <span pulumi-lang-nodejs="`captcha`" pulumi-lang-dotnet="`Captcha`" pulumi-lang-go="`captcha`" pulumi-lang-python="`captcha`" pulumi-lang-yaml="`captcha`" pulumi-lang-java="`captcha`">`captcha`</span> below for details.
  final WebAclRuleActionCaptcha? captcha;

  /// Instructs AWS WAF to run a check against the request to verify that the request is coming from a legitimate client session. See <span pulumi-lang-nodejs="`challenge`" pulumi-lang-dotnet="`Challenge`" pulumi-lang-go="`challenge`" pulumi-lang-python="`challenge`" pulumi-lang-yaml="`challenge`" pulumi-lang-java="`challenge`">`challenge`</span> below for details.
  final WebAclRuleActionChallenge? challenge;

  /// Instructs AWS WAF to count the web request and allow it. See <span pulumi-lang-nodejs="`count`" pulumi-lang-dotnet="`Count`" pulumi-lang-go="`count`" pulumi-lang-python="`count`" pulumi-lang-yaml="`count`" pulumi-lang-java="`count`">`count`</span> below for details.
  final WebAclRuleActionCount? count;

  WebAclRuleAction3({
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

  factory WebAclRuleAction3.fromMap(Map<String, dynamic> map) {
    return WebAclRuleAction3(
      allow: map['allow'] == null
          ? null
          : WebAclRuleActionAllow.fromMap(
              (map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null
          ? null
          : WebAclRuleActionBlock.fromMap(
              (map['block'] as Map).cast<String, dynamic>()),
      captcha: map['captcha'] == null
          ? null
          : WebAclRuleActionCaptcha.fromMap(
              (map['captcha'] as Map).cast<String, dynamic>()),
      challenge: map['challenge'] == null
          ? null
          : WebAclRuleActionChallenge.fromMap(
              (map['challenge'] as Map).cast<String, dynamic>()),
      count: map['count'] == null
          ? null
          : WebAclRuleActionCount.fromMap(
              (map['count'] as Map).cast<String, dynamic>()),
    );
  }
}
