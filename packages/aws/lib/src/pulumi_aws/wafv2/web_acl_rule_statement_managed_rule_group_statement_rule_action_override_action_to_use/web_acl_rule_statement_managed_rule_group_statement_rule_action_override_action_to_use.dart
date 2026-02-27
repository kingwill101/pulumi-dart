// ignore_for_file: unused_element, unnecessary_cast

import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_allow/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_allow.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_captcha/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_captcha.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge.dart';
import '../web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_count/web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_count.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse {
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow?
      allow;
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock?
      block;

  /// Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha?
      captcha;
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge?
      challenge;
  final WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount?
      count;

  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse({
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

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse(
      allow: map['allow'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow
              .fromMap((map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock
              .fromMap((map['block'] as Map).cast<String, dynamic>()),
      captcha: map['captcha'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha
              .fromMap((map['captcha'] as Map).cast<String, dynamic>()),
      challenge: map['challenge'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge
              .fromMap((map['challenge'] as Map).cast<String, dynamic>()),
      count: map['count'] == null
          ? null
          : WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount
              .fromMap((map['count'] as Map).cast<String, dynamic>()),
    );
  }
}
