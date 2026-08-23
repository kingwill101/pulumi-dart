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
  /// Specifies a snapshot archiving rule for a schedule. See `archiveRule` block.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleArchiveRule>? archiveRule;
  final pulumi.Input<bool>? copyTags;
  /// See the `createRule` block. Max of 1 per schedule.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleCreateRule> createRule;
  /// See the `crossRegionCopyRule` block. Max of 3 per schedule.
  final pulumi.Input<List<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>>? crossRegionCopyRules;
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleDeprecateRule>? deprecateRule;
  /// See the `fastRestoreRule` block. Max of 1 per schedule.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleFastRestoreRule>? fastRestoreRule;
  final pulumi.Input<String> name;
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleRetainRule> retainRule;
  /// See the `shareRule` block. Max of 1 per schedule.
  final pulumi.Input<LifecyclePolicyPolicyDetailsScheduleShareRule>? shareRule;
  /// A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these.
  final pulumi.Input<Map<String, String>>? tagsToAdd;
  /// A map of tag keys and variable values, where the values are determined when the policy is executed. Only `$(instance-id)` or `$(timestamp)` are valid values. Can only be used when `resourceTypes` is `INSTANCE`.
  final pulumi.Input<Map<String, String>>? variableTags;

  /// Creates a new [LifecyclePolicyPolicyDetailsSchedule].
  /// [archiveRule] Specifies a snapshot archiving rule for a schedule. See `archiveRule` block.
  /// [copyTags] Optional.
  /// [createRule] See the `createRule` block. Max of 1 per schedule.
  /// [crossRegionCopyRules] See the `crossRegionCopyRule` block. Max of 3 per schedule.
  /// [deprecateRule] Optional.
  /// [fastRestoreRule] See the `fastRestoreRule` block. Max of 1 per schedule.
  /// [name] Required.
  /// [retainRule] Required.
  /// [shareRule] See the `shareRule` block. Max of 1 per schedule.
  /// [tagsToAdd] A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these.
  /// [variableTags] A map of tag keys and variable values, where the values are determined when the policy is executed. Only `$(instance-id)` or `$(timestamp)` are valid values. Can only be used when `resourceTypes` is `INSTANCE`.
  const LifecyclePolicyPolicyDetailsSchedule({
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
      archiveRule: (() { final guardedValue = map['archiveRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      copyTags: (() { final guardedValue = map['copyTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      createRule: pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleCreateRule.fromMap((map['createRule']! as Map).cast<String, dynamic>())),
      crossRegionCopyRules: (() { final guardedValue = map['crossRegionCopyRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>(guardedValue, (value) => LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deprecateRule: (() { final guardedValue = map['deprecateRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleDeprecateRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fastRestoreRule: (() { final guardedValue = map['fastRestoreRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      retainRule: pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleRetainRule.fromMap((map['retainRule']! as Map).cast<String, dynamic>())),
      shareRule: (() { final guardedValue = map['shareRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LifecyclePolicyPolicyDetailsScheduleShareRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagsToAdd: (() { final guardedValue = map['tagsToAdd']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      variableTags: (() { final guardedValue = map['variableTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
