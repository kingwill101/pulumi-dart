// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_allow.dart';
import 'get_managed_rule_group_rule_action_block.dart';
import 'get_managed_rule_group_rule_action_captcha.dart';
import 'get_managed_rule_group_rule_action_challenge.dart';
import 'get_managed_rule_group_rule_action_count.dart';

class GetManagedRuleGroupRuleAction {
  final pulumi.Input<List<GetManagedRuleGroupRuleActionAllow>> allows;
  final pulumi.Input<List<GetManagedRuleGroupRuleActionBlock>> blocks;
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCaptcha>> captchas;
  final pulumi.Input<List<GetManagedRuleGroupRuleActionChallenge>> challenges;
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCount>> counts;

  /// Creates a new [GetManagedRuleGroupRuleAction].
  /// [allows] Required.
  /// [blocks] Required.
  /// [captchas] Required.
  /// [challenges] Required.
  /// [counts] Required.
  GetManagedRuleGroupRuleAction({
    required this.allows,
    required this.blocks,
    required this.captchas,
    required this.challenges,
    required this.counts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allows': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionAllow>, List<Map<String, dynamic>>>(allows, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionAllow, Map<String, dynamic>>(value, (value) => value.toMap())),
      'blocks': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionBlock>, List<Map<String, dynamic>>>(blocks, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionBlock, Map<String, dynamic>>(value, (value) => value.toMap())),
      'captchas': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionCaptcha>, List<Map<String, dynamic>>>(captchas, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionCaptcha, Map<String, dynamic>>(value, (value) => value.toMap())),
      'challenges': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionChallenge>, List<Map<String, dynamic>>>(challenges, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionChallenge, Map<String, dynamic>>(value, (value) => value.toMap())),
      'counts': pulumi.Input.mapInputValue<List<GetManagedRuleGroupRuleActionCount>, List<Map<String, dynamic>>>(counts, (value) => pulumi.Input.encodeList<GetManagedRuleGroupRuleActionCount, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetManagedRuleGroupRuleAction.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleAction(
      allows: (pulumi.Input.decodeList<GetManagedRuleGroupRuleActionAllow>(map['allows']!, (value) => GetManagedRuleGroupRuleActionAllow.fromMap((value as Map).cast<String, dynamic>()))).input(),
      blocks: (pulumi.Input.decodeList<GetManagedRuleGroupRuleActionBlock>(map['blocks']!, (value) => GetManagedRuleGroupRuleActionBlock.fromMap((value as Map).cast<String, dynamic>()))).input(),
      captchas: (pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCaptcha>(map['captchas']!, (value) => GetManagedRuleGroupRuleActionCaptcha.fromMap((value as Map).cast<String, dynamic>()))).input(),
      challenges: (pulumi.Input.decodeList<GetManagedRuleGroupRuleActionChallenge>(map['challenges']!, (value) => GetManagedRuleGroupRuleActionChallenge.fromMap((value as Map).cast<String, dynamic>()))).input(),
      counts: (pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCount>(map['counts']!, (value) => GetManagedRuleGroupRuleActionCount.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

