// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_allow.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_block.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_captcha.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_challenge.dart';
import 'web_acl_rule_statement_rule_group_reference_statement_rule_action_override_action_to_use_count.dart';

class WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse {
  /// Allow the request. See Allow below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow>? allow;
  /// Block the request. See Block below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock>? block;
  /// Present a CAPTCHA challenge. See Captcha below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha>? captcha;
  /// Present a silent challenge. See Challenge below.
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallenge>? challenge;
  final pulumi.Input<WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount>? count;

  /// Creates a new [WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse].
  /// [allow] Allow the request. See Allow below.
  /// [block] Block the request. See Block below.
  /// [captcha] Present a CAPTCHA challenge. See Captcha below.
  /// [challenge] Present a silent challenge. See Challenge below.
  /// [count] Optional.
  const WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUse({
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
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseAllow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      block: (() { final guardedValue = map['block']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captcha: (() { final guardedValue = map['captcha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCaptcha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      challenge: (() { final guardedValue = map['challenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseChallenge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleStatementRuleGroupReferenceStatementRuleActionOverrideActionToUseCount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
