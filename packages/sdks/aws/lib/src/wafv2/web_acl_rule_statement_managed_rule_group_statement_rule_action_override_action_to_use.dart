// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_allow.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_block.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_captcha.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_challenge.dart';
import 'web_acl_rule_statement_managed_rule_group_statement_rule_action_override_action_to_use_count.dart';

class WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse {
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow
  >?
  allow;
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock
  >?
  block;

  /// Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha
  >?
  captcha;
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge
  >?
  challenge;
  final pulumi.Input<
    WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount
  >?
  count;

  /// Creates a new [WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse].
  /// [allow] Optional.
  /// [block] Optional.
  /// [captcha] Instructs AWS WAF to run a Captcha check against the web request. See `captcha` below for details.
  /// [challenge] Optional.
  /// [count] Optional.
  WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse({
    this.allow,
    this.block,
    this.captcha,
    this.challenge,
    this.count,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allow':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow,
            Map<String, dynamic>
          >(allow, (value) => value.toMap()),
      'block':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock,
            Map<String, dynamic>
          >(block, (value) => value.toMap()),
      'captcha':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha,
            Map<String, dynamic>
          >(captcha, (value) => value.toMap()),
      'challenge':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge,
            Map<String, dynamic>
          >(challenge, (value) => value.toMap()),
      'count':
          ?pulumi.Input.mapOptionalInputValue<
            WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount,
            Map<String, dynamic>
          >(count, (value) => value.toMap()),
    };
  }

  factory WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse.fromMap(
    Map<String, dynamic> map,
  ) {
    return WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUse(
      allow: (() {
        final guardedValue = map['allow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseAllow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      block: (() {
        final guardedValue = map['block'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseBlock.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      captcha: (() {
        final guardedValue = map['captcha'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCaptcha.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      challenge: (() {
        final guardedValue = map['challenge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseChallenge.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WebAclRuleStatementManagedRuleGroupStatementRuleActionOverrideActionToUseCount.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
