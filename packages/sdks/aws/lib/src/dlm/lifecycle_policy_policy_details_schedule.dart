// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lifecycle_policy_policy_details_schedule_archive_rule.dart';
import 'lifecycle_policy_policy_details_schedule_create_rule.dart';
import 'lifecycle_policy_policy_details_schedule_cross_region_copy_rule.dart';
import 'lifecycle_policy_policy_details_schedule_deprecate_rule.dart';
import 'lifecycle_policy_policy_details_schedule_fast_restore_rule.dart';
import 'lifecycle_policy_policy_details_schedule_retain_rule.dart';
import 'lifecycle_policy_policy_details_schedule_share_rule.dart';

class LifecyclePolicyPolicyDetailsSchedule {
  /// Specifies a snapshot archiving rule for a schedule. See `archive_rule` block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleArchiveRule>? archiveRule;
  final pulumi.Input<bool>? copyTags;
  /// See the `create_rule` block. Max of 1 per schedule.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleCreateRule> createRule;
  /// See the `cross_region_copy_rule` block. Max of 3 per schedule.
  final pulumi.Input<List<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>>? crossRegionCopyRules;
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleDeprecateRule>? deprecateRule;
  /// See the `fast_restore_rule` block. Max of 1 per schedule.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleFastRestoreRule>? fastRestoreRule;
  final pulumi.Input<String> name;
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleRetainRule> retainRule;
  /// See the `share_rule` block. Max of 1 per schedule.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleShareRule>? shareRule;
  /// A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these.
  final pulumi.Input<Map<String, String>>? tagsToAdd;
  /// A map of tag keys and variable values, where the values are determined when the policy is executed. Only `$(instance-id)` or `$(timestamp)` are valid values. Can only be used when `resource_types` is `INSTANCE`.
  final pulumi.Input<Map<String, String>>? variableTags;

  /// Creates a new [LifecyclePolicyPolicyDetailsSchedule].
  /// [archiveRule] Specifies a snapshot archiving rule for a schedule. See `archive_rule` block.
  /// [copyTags] Optional.
  /// [createRule] See the `create_rule` block. Max of 1 per schedule.
  /// [crossRegionCopyRules] See the `cross_region_copy_rule` block. Max of 3 per schedule.
  /// [deprecateRule] Optional.
  /// [fastRestoreRule] See the `fast_restore_rule` block. Max of 1 per schedule.
  /// [name] Required.
  /// [retainRule] Required.
  /// [shareRule] See the `share_rule` block. Max of 1 per schedule.
  /// [tagsToAdd] A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these.
  /// [variableTags] A map of tag keys and variable values, where the values are determined when the policy is executed. Only `$(instance-id)` or `$(timestamp)` are valid values. Can only be used when `resource_types` is `INSTANCE`.
  LifecyclePolicyPolicyDetailsSchedule({
    this.archiveRule,
    this.copyTags,
    required this.createRule,
    this.crossRegionCopyRules,
    this.deprecateRule,
    this.fastRestoreRule,
    required this.name,
    required this.retainRule,
    this.shareRule,
    this.tagsToAdd,
    this.variableTags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleArchiveRule, Map<String, dynamic>>(archiveRule, (value) => value.toMap()),
      'copyTags': ?copyTags,
      'createRule': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailsScheduleCreateRule, Map<String, dynamic>>(createRule, (value) => value.toMap()),
      'crossRegionCopyRules': ?pulumi.Input.mapOptionalInputValue<List<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>, List<Map<String, dynamic>>>(crossRegionCopyRules, (value) => pulumi.Input.encodeList<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deprecateRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleDeprecateRule, Map<String, dynamic>>(deprecateRule, (value) => value.toMap()),
      'fastRestoreRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleFastRestoreRule, Map<String, dynamic>>(fastRestoreRule, (value) => value.toMap()),
      'name': name,
      'retainRule': pulumi.Input.mapInputValue<LifecyclePolicyPolicyDetailsScheduleRetainRule, Map<String, dynamic>>(retainRule, (value) => value.toMap()),
      'shareRule': ?pulumi.Input.mapOptionalInputValue<LifecyclePolicyPolicyDetailsScheduleShareRule, Map<String, dynamic>>(shareRule, (value) => value.toMap()),
      'tagsToAdd': ?tagsToAdd,
      'variableTags': ?variableTags,
    };
  }

  factory LifecyclePolicyPolicyDetailsSchedule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsSchedule(
      archiveRule: map['archiveRule'] == null ? null : ((LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap((map['archiveRule']! as Map).cast<String, dynamic>())).input()).input(),
      copyTags: map['copyTags'] == null ? null : ((map['copyTags'] as bool).input()).input(),
      createRule: (LifecyclePolicyPolicyDetailsScheduleCreateRule.fromMap((map['createRule']! as Map).cast<String, dynamic>())).input(),
      crossRegionCopyRules: map['crossRegionCopyRules'] == null ? null : ((pulumi.Input.decodeList<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>(map['crossRegionCopyRules']!, (value) => LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      deprecateRule: map['deprecateRule'] == null ? null : ((LifecyclePolicyPolicyDetailsScheduleDeprecateRule.fromMap((map['deprecateRule']! as Map).cast<String, dynamic>())).input()).input(),
      fastRestoreRule: map['fastRestoreRule'] == null ? null : ((LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap((map['fastRestoreRule']! as Map).cast<String, dynamic>())).input()).input(),
      name: (map['name'] as String).input(),
      retainRule: (LifecyclePolicyPolicyDetailsScheduleRetainRule.fromMap((map['retainRule']! as Map).cast<String, dynamic>())).input(),
      shareRule: map['shareRule'] == null ? null : ((LifecyclePolicyPolicyDetailsScheduleShareRule.fromMap((map['shareRule']! as Map).cast<String, dynamic>())).input()).input(),
      tagsToAdd: map['tagsToAdd'] == null ? null : (((map['tagsToAdd'] as Map).cast<String, String>()).input()).input(),
      variableTags: map['variableTags'] == null ? null : (((map['variableTags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

