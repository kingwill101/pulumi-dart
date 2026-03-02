// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_block.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_captcha.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_challenge.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_count.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse {
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow>? allow;
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock>? block;
  /// Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha>? captcha;
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallenge>? challenge;
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount>? count;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse].
  /// [allow] Optional.
  /// [block] Optional.
  /// [captcha] Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  /// [challenge] Optional.
  /// [count] Optional.
  WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'captcha': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha, Map<String, dynamic>>(captcha, (value) => value.toMap()),
      'challenge': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallenge, Map<String, dynamic>>(challenge, (value) => value.toMap()),
      'count': ?pulumi.Input.mapOptionalInputValue<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount, Map<String, dynamic>>(count, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse(
      allow: map['allow'] == null ? null : (WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow.fromMap((map['allow'] as Map).cast<String, dynamic>())).input(),
      block: map['block'] == null ? null : (WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock.fromMap((map['block'] as Map).cast<String, dynamic>())).input(),
      captcha: map['captcha'] == null ? null : (WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha.fromMap((map['captcha'] as Map).cast<String, dynamic>())).input(),
      challenge: map['challenge'] == null ? null : (WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallenge.fromMap((map['challenge'] as Map).cast<String, dynamic>())).input(),
      count: map['count'] == null ? null : (WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount.fromMap((map['count'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

