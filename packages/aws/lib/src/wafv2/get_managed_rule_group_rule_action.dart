// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_rule_group_rule_action_allow.dart';
import 'get_managed_rule_group_rule_action_block.dart';
import 'get_managed_rule_group_rule_action_captcha.dart';
import 'get_managed_rule_group_rule_action_challenge.dart';
import 'get_managed_rule_group_rule_action_count.dart';

class GetManagedRuleGroupRuleAction {
  final List<GetManagedRuleGroupRuleActionAllow> allows;
  final List<GetManagedRuleGroupRuleActionBlock> blocks;
  final List<GetManagedRuleGroupRuleActionCaptcha> captchas;
  final List<GetManagedRuleGroupRuleActionChallenge> challenges;
  final List<GetManagedRuleGroupRuleActionCount> counts;

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
      'allows':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRuleActionAllow,
            Map<String, dynamic>
          >(allows, (value) => value.toMap()),
      'blocks':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRuleActionBlock,
            Map<String, dynamic>
          >(blocks, (value) => value.toMap()),
      'captchas':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRuleActionCaptcha,
            Map<String, dynamic>
          >(captchas, (value) => value.toMap()),
      'challenges':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRuleActionChallenge,
            Map<String, dynamic>
          >(challenges, (value) => value.toMap()),
      'counts':
          pulumi.Input.encodeList<
            GetManagedRuleGroupRuleActionCount,
            Map<String, dynamic>
          >(counts, (value) => value.toMap()),
    };
  }

  factory GetManagedRuleGroupRuleAction.fromMap(Map<String, dynamic> map) {
    return GetManagedRuleGroupRuleAction(
      allows: pulumi.Input.decodeList<GetManagedRuleGroupRuleActionAllow>(
        map['allows'],
        (value) => GetManagedRuleGroupRuleActionAllow.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      blocks: pulumi.Input.decodeList<GetManagedRuleGroupRuleActionBlock>(
        map['blocks'],
        (value) => GetManagedRuleGroupRuleActionBlock.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      captchas: pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCaptcha>(
        map['captchas'],
        (value) => GetManagedRuleGroupRuleActionCaptcha.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      challenges:
          pulumi.Input.decodeList<GetManagedRuleGroupRuleActionChallenge>(
            map['challenges'],
            (value) => GetManagedRuleGroupRuleActionChallenge.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      counts: pulumi.Input.decodeList<GetManagedRuleGroupRuleActionCount>(
        map['counts'],
        (value) => GetManagedRuleGroupRuleActionCount.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
