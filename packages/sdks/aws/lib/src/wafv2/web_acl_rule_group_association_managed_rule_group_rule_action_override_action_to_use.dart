// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_allow.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_block.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_captcha.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_challenge.dart';
import 'web_acl_rule_group_association_managed_rule_group_rule_action_override_action_to_use_count.dart';

class WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse {
  /// Allow the request. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow>? allow;
  /// Block the request. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock>? block;
  /// Require CAPTCHA verification. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha>? captcha;
  /// Require challenge verification. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge>? challenge;
  /// Count the request without taking action. See below.
  final pulumi.Input<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount>? count;

  /// Creates a new [WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse].
  /// [allow] Allow the request. See below.
  /// [block] Block the request. See below.
  /// [captcha] Require CAPTCHA verification. See below.
  /// [challenge] Require challenge verification. See below.
  /// [count] Count the request without taking action. See below.
  const WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'captcha': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha, Map<String, dynamic>>(captcha, (value) => value.toMap()),
      'challenge': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge, Map<String, dynamic>>(challenge, (value) => value.toMap()),
      'count': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount, Map<String, dynamic>>(count, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUse(
      allow: (() { final guardedValue = map['allow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseAllow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      block: (() { final guardedValue = map['block']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseBlock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      captcha: (() { final guardedValue = map['captcha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCaptcha.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      challenge: (() { final guardedValue = map['challenge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseChallenge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WebAclRuleGroupAssociationManagedRuleGroupRuleActionOverrideActionToUseCount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
