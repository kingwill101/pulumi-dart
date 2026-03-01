// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_policy_policy_details_schedule_cross_region_copy_rule_deprecate_rule.dart';
import 'lifecycle_policy_policy_details_schedule_cross_region_copy_rule_retain_rule.dart';

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule {
  final String? cmkArn;
  final bool? copyTags;
  final LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule? deprecateRule;
  final bool encrypted;
  final LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule? retainRule;
  final String? target;
  /// Use only for DLM policies of `policy_type=IMAGE_MANAGEMENT`. The target Region or the Amazon Resource Name (ARN) of the target Outpost for the snapshot copies.
  final String? targetRegion;

  /// Creates a new [LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule].
  /// [cmkArn] Optional.
  /// [copyTags] Optional.
  /// [deprecateRule] Optional.
  /// [encrypted] Required.
  /// [retainRule] Optional.
  /// [target] Optional.
  /// [targetRegion] Use only for DLM policies of `policy_type=IMAGE_MANAGEMENT`. The target Region or the Amazon Resource Name (ARN) of the target Outpost for the snapshot copies.
  LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule({
    this.cmkArn,
    this.copyTags,
    this.deprecateRule,
    required this.encrypted,
    this.retainRule,
    this.target,
    this.targetRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmkArn': ?cmkArn,
      'copyTags': ?copyTags,
      'deprecateRule': ?deprecateRule == null ? null : deprecateRule!.toMap(),
      'encrypted': encrypted,
      'retainRule': ?retainRule == null ? null : retainRule!.toMap(),
      'target': ?target,
      'targetRegion': ?targetRegion,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule(
      cmkArn: map['cmkArn'] == null ? null : map['cmkArn'] as String,
      copyTags: map['copyTags'] == null ? null : map['copyTags'] as bool,
      deprecateRule: map['deprecateRule'] == null ? null : LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule.fromMap((map['deprecateRule'] as Map).cast<String, dynamic>()),
      encrypted: map['encrypted'] as bool,
      retainRule: map['retainRule'] == null ? null : LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule.fromMap((map['retainRule'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : map['target'] as String,
      targetRegion: map['targetRegion'] == null ? null : map['targetRegion'] as String,
    );
  }
}

