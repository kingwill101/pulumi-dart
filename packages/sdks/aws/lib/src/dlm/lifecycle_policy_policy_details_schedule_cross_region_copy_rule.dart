// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_schedule_cross_region_copy_rule_deprecate_rule.dart';
import 'lifecycle_policy_policy_details_schedule_cross_region_copy_rule_retain_rule.dart';

class LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule {
  final pulumi.Input<String>? cmkArn;
  final pulumi.Input<bool>? copyTags;
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule>? deprecateRule;
  final pulumi.Input<bool> encrypted;
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule>? retainRule;
  final pulumi.Input<String>? target;
  /// Use only for DLM policies of `policy_type=IMAGE_MANAGEMENT`. The target Region or the Amazon Resource Name (ARN) of the target Outpost for the snapshot copies.
  final pulumi.Input<String>? targetRegion;

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
      'deprecateRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule, Map<String, dynamic>>(deprecateRule, (value) => value.toMap()),
      'encrypted': encrypted,
      'retainRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule, Map<String, dynamic>>(retainRule, (value) => value.toMap()),
      'target': ?target,
      'targetRegion': ?targetRegion,
    };
  }

  factory LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule(
      cmkArn: map['cmkArn'] == null ? null : (map['cmkArn'] as String).input(),
      copyTags: map['copyTags'] == null ? null : (map['copyTags'] as bool).input(),
      deprecateRule: map['deprecateRule'] == null ? null : (LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleDeprecateRule.fromMap((map['deprecateRule'] as Map).cast<String, dynamic>())).input(),
      encrypted: (map['encrypted'] as bool).input(),
      retainRule: map['retainRule'] == null ? null : (LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRuleRetainRule.fromMap((map['retainRule'] as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      targetRegion: map['targetRegion'] == null ? null : (map['targetRegion'] as String).input(),
    );
  }
}

