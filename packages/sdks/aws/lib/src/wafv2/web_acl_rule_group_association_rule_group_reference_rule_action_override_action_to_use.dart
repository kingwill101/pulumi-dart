// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_allow.dart';
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_block.dart';
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_captcha.dart';
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_challenge.dart';
import 'web_acl_rule_group_association_rule_group_reference_rule_action_override_action_to_use_count.dart';

class WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse {
  /// Allow the request. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow>? allow;
  /// Block the request. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock>? block;
  /// Require CAPTCHA verification. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha>? captcha;
  /// Require challenge verification. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge>? challenge;
  /// Count the request without taking action. See below.
  final pulumi.Input<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount>? count;

  /// Creates a new [WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse].
  /// [allow] Allow the request. See below.
  /// [block] Block the request. See below.
  /// [captcha] Require CAPTCHA verification. See below.
  /// [challenge] Require challenge verification. See below.
  /// [count] Count the request without taking action. See below.
  WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow, Map<String, dynamic>>(allow, (value) => value.toMap()),
      'block': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock, Map<String, dynamic>>(block, (value) => value.toMap()),
      'captcha': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha, Map<String, dynamic>>(captcha, (value) => value.toMap()),
      'challenge': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge, Map<String, dynamic>>(challenge, (value) => value.toMap()),
      'count': ?pulumi.Input.mapOptionalInputValue<WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount, Map<String, dynamic>>(count, (value) => value.toMap()),
    };
  }

  factory WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse.fromMap(Map<String, dynamic> map) {
    return WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUse(
      allow: map['allow'] == null ? null : (WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseAllow.fromMap((map['allow'] as Map).cast<String, dynamic>())).input(),
      block: map['block'] == null ? null : (WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseBlock.fromMap((map['block'] as Map).cast<String, dynamic>())).input(),
      captcha: map['captcha'] == null ? null : (WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCaptcha.fromMap((map['captcha'] as Map).cast<String, dynamic>())).input(),
      challenge: map['challenge'] == null ? null : (WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseChallenge.fromMap((map['challenge'] as Map).cast<String, dynamic>())).input(),
      count: map['count'] == null ? null : (WebAclRuleGroupAssociationRuleGroupReferenceRuleActionOverrideActionToUseCount.fromMap((map['count'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

