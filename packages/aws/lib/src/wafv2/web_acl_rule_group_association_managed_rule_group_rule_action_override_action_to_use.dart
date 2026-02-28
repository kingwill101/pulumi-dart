// ignore_for_file: unused_element, unnecessary_cast

import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_allow.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_block.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_captcha.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_challenge.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_count.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse {
  /// Allow the request. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow?
      allow;

  /// Block the request. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock?
      block;

  /// Require CAPTCHA verification. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha?
      captcha;

  /// Require challenge verification. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge?
      challenge;

  /// Count the request without taking action. See below.
  final WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount?
      count;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse].
  /// [allow] Allow the request. See below.
  /// [block] Block the request. See below.
  /// [captcha] Require CAPTCHA verification. See below.
  /// [challenge] Require challenge verification. See below.
  /// [count] Count the request without taking action. See below.
  WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse({
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

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse.fromMap(
      Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse(
      allow: map['allow'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow
              .fromMap((map['allow'] as Map).cast<String, dynamic>()),
      block: map['block'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock
              .fromMap((map['block'] as Map).cast<String, dynamic>()),
      captcha: map['captcha'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha
              .fromMap((map['captcha'] as Map).cast<String, dynamic>()),
      challenge: map['challenge'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge
              .fromMap((map['challenge'] as Map).cast<String, dynamic>()),
      count: map['count'] == null
          ? null
          : WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount
              .fromMap((map['count'] as Map).cast<String, dynamic>()),
    );
  }
}
