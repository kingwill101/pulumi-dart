// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_allow.dart';
import 'get_managed_rule_group_rule_action_block.dart';
import 'get_managed_rule_group_rule_action_captcha.dart';
import 'get_managed_rule_group_rule_action_challenge.dart';
import 'get_managed_rule_group_rule_action_count.dart';

class GetManagedRuleGroupRuleAction {
  /// Rule action that allows the request. See `allow` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionAllow>> allows;
  /// Rule action that blocks the request. See `block` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionBlock>> blocks;
  /// Rule action that requires CAPTCHA verification. See `captcha` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCaptcha>> captchas;
  /// Rule action that requires challenge verification. See `challenge` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionChallenge>> challenges;
  /// Rule action that counts the request without taking other action. See `count` Block for details.
  final pulumi.Input<List<GetManagedRuleGroupRuleActionCount>> counts;

  /// Creates a new [GetManagedRuleGroupRuleAction].
  /// [allows] Rule action that allows the request. See `allow` Block for details.
  /// [blocks] Rule action that blocks the request. See `block` Block for details.
  /// [captchas] Rule action that requires CAPTCHA verification. See `captcha` Block for details.
  /// [challenges] Rule action that requires challenge verification. See `challenge` Block for details.
  /// [counts] Rule action that counts the request without taking other action. See `count` Block for details.
  const GetManagedRuleGroupRuleAction({
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
      allows: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionAllow>(map['allows']!, (value) => GetManagedRuleGroupRuleActionAllow.fromMap((value as Map).cast<String, dynamic>()))),
      blocks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionBlock>(map['blocks']!, (value) => GetManagedRuleGroupRuleActionBlock.fromMap((value as Map).cast<String, dynamic>()))),
      captchas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCaptcha>(map['captchas']!, (value) => GetManagedRuleGroupRuleActionCaptcha.fromMap((value as Map).cast<String, dynamic>()))),
      challenges: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionChallenge>(map['challenges']!, (value) => GetManagedRuleGroupRuleActionChallenge.fromMap((value as Map).cast<String, dynamic>()))),
      counts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCount>(map['counts']!, (value) => GetManagedRuleGroupRuleActionCount.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
