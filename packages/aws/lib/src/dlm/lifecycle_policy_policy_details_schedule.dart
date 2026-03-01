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
  final LifecyclePolicyPolicyDetailsScheduleArchiveRule? archiveRule;
  final bool? copyTags;
  /// See the `create_rule` block. Max of 1 per schedule.
  final LifecyclePolicyPolicyDetailsScheduleCreateRule createRule;
  /// See the `cross_region_copy_rule` block. Max of 3 per schedule.
  final List<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>? crossRegionCopyRules;
  final LifecyclePolicyPolicyDetailsScheduleDeprecateRule? deprecateRule;
  /// See the `fast_restore_rule` block. Max of 1 per schedule.
  final LifecyclePolicyPolicyDetailsScheduleFastRestoreRule? fastRestoreRule;
  final String name;
  final LifecyclePolicyPolicyDetailsScheduleRetainRule retainRule;
  /// See the `share_rule` block. Max of 1 per schedule.
  final LifecyclePolicyPolicyDetailsScheduleShareRule? shareRule;
  /// A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these.
  final Map<String, String>? tagsToAdd;
  /// A map of tag keys and variable values, where the values are determined when the policy is executed. Only `$(instance-id)` or `$(timestamp)` are valid values. Can only be used when `resource_types` is `INSTANCE`.
  final Map<String, String>? variableTags;

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
      'archiveRule': ?archiveRule == null ? null : archiveRule!.toMap(),
      'copyTags': ?copyTags,
      'createRule': createRule.toMap(),
      'crossRegionCopyRules': ?crossRegionCopyRules == null ? null : pulumi.Input.encodeList<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule, Map<String, dynamic>>(crossRegionCopyRules!, (value) => value.toMap()),
      'deprecateRule': ?deprecateRule == null ? null : deprecateRule!.toMap(),
      'fastRestoreRule': ?fastRestoreRule == null ? null : fastRestoreRule!.toMap(),
      'name': name,
      'retainRule': retainRule.toMap(),
      'shareRule': ?shareRule == null ? null : shareRule!.toMap(),
      'tagsToAdd': ?tagsToAdd,
      'variableTags': ?variableTags,
    };
  }

  factory LifecyclePolicyPolicyDetailsSchedule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsSchedule(
      archiveRule: map['archiveRule'] == null ? null : LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap((map['archiveRule'] as Map).cast<String, dynamic>()),
      copyTags: map['copyTags'] == null ? null : map['copyTags'] as bool,
      createRule: LifecyclePolicyPolicyDetailsScheduleCreateRule.fromMap((map['createRule'] as Map).cast<String, dynamic>()),
      crossRegionCopyRules: map['crossRegionCopyRules'] == null ? null : pulumi.Input.decodeList<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>(map['crossRegionCopyRules'], (value) => LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule.fromMap((value as Map).cast<String, dynamic>())),
      deprecateRule: map['deprecateRule'] == null ? null : LifecyclePolicyPolicyDetailsScheduleDeprecateRule.fromMap((map['deprecateRule'] as Map).cast<String, dynamic>()),
      fastRestoreRule: map['fastRestoreRule'] == null ? null : LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap((map['fastRestoreRule'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      retainRule: LifecyclePolicyPolicyDetailsScheduleRetainRule.fromMap((map['retainRule'] as Map).cast<String, dynamic>()),
      shareRule: map['shareRule'] == null ? null : LifecyclePolicyPolicyDetailsScheduleShareRule.fromMap((map['shareRule'] as Map).cast<String, dynamic>()),
      tagsToAdd: map['tagsToAdd'] == null ? null : (map['tagsToAdd'] as Map).cast<String, String>(),
      variableTags: map['variableTags'] == null ? null : (map['variableTags'] as Map).cast<String, String>(),
    );
  }
}

