// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../lifecycle_policy_policy_details_schedule_archive_rule/lifecycle_policy_policy_details_schedule_archive_rule.dart';
import '../lifecycle_policy_policy_details_schedule_create_rule/lifecycle_policy_policy_details_schedule_create_rule.dart';
import '../lifecycle_policy_policy_details_schedule_cross_region_copy_rule/lifecycle_policy_policy_details_schedule_cross_region_copy_rule.dart';
import '../lifecycle_policy_policy_details_schedule_deprecate_rule/lifecycle_policy_policy_details_schedule_deprecate_rule.dart';
import '../lifecycle_policy_policy_details_schedule_fast_restore_rule/lifecycle_policy_policy_details_schedule_fast_restore_rule.dart';
import '../lifecycle_policy_policy_details_schedule_retain_rule/lifecycle_policy_policy_details_schedule_retain_rule.dart';
import '../lifecycle_policy_policy_details_schedule_share_rule/lifecycle_policy_policy_details_schedule_share_rule.dart';

class LifecyclePolicyPolicyDetailsSchedule {
  /// Specifies a snapshot archiving rule for a schedule. See <span pulumi-lang-nodejs="`archiveRule`" pulumi-lang-dotnet="`ArchiveRule`" pulumi-lang-go="`archiveRule`" pulumi-lang-python="`archive_rule`" pulumi-lang-yaml="`archiveRule`" pulumi-lang-java="`archiveRule`">`archive_rule`</span> block.
  final LifecyclePolicyPolicyDetailsScheduleArchiveRule? archiveRule;
  final bool? copyTags;

  /// See the <span pulumi-lang-nodejs="`createRule`" pulumi-lang-dotnet="`CreateRule`" pulumi-lang-go="`createRule`" pulumi-lang-python="`create_rule`" pulumi-lang-yaml="`createRule`" pulumi-lang-java="`createRule`">`create_rule`</span> block. Max of 1 per schedule.
  final LifecyclePolicyPolicyDetailsScheduleCreateRule createRule;

  /// See the <span pulumi-lang-nodejs="`crossRegionCopyRule`" pulumi-lang-dotnet="`CrossRegionCopyRule`" pulumi-lang-go="`crossRegionCopyRule`" pulumi-lang-python="`cross_region_copy_rule`" pulumi-lang-yaml="`crossRegionCopyRule`" pulumi-lang-java="`crossRegionCopyRule`">`cross_region_copy_rule`</span> block. Max of 3 per schedule.
  final List<LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>?
      crossRegionCopyRules;
  final LifecyclePolicyPolicyDetailsScheduleDeprecateRule? deprecateRule;

  /// See the <span pulumi-lang-nodejs="`fastRestoreRule`" pulumi-lang-dotnet="`FastRestoreRule`" pulumi-lang-go="`fastRestoreRule`" pulumi-lang-python="`fast_restore_rule`" pulumi-lang-yaml="`fastRestoreRule`" pulumi-lang-java="`fastRestoreRule`">`fast_restore_rule`</span> block. Max of 1 per schedule.
  final LifecyclePolicyPolicyDetailsScheduleFastRestoreRule? fastRestoreRule;
  final String name;
  final LifecyclePolicyPolicyDetailsScheduleRetainRule retainRule;

  /// See the <span pulumi-lang-nodejs="`shareRule`" pulumi-lang-dotnet="`ShareRule`" pulumi-lang-go="`shareRule`" pulumi-lang-python="`share_rule`" pulumi-lang-yaml="`shareRule`" pulumi-lang-java="`shareRule`">`share_rule`</span> block. Max of 1 per schedule.
  final LifecyclePolicyPolicyDetailsScheduleShareRule? shareRule;

  /// A map of tag keys and their values. DLM lifecycle policies will already tag the snapshot with the tags on the volume. This configuration adds extra tags on top of these.
  final Map<String, String>? tagsToAdd;

  /// A map of tag keys and variable values, where the values are determined when the policy is executed. Only `$(instance-id)` or `$(timestamp)` are valid values. Can only be used when <span pulumi-lang-nodejs="`resourceTypes`" pulumi-lang-dotnet="`ResourceTypes`" pulumi-lang-go="`resourceTypes`" pulumi-lang-python="`resource_types`" pulumi-lang-yaml="`resourceTypes`" pulumi-lang-java="`resourceTypes`">`resource_types`</span> is `INSTANCE`.
  final Map<String, String>? variableTags;

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
    final map = <String, dynamic>{};
    final archiveRuleValue = archiveRule;
    if (archiveRuleValue != null) {
      map['archiveRule'] = archiveRuleValue.toMap();
    }
    final copyTagsValue = copyTags;
    if (copyTagsValue != null) {
      map['copyTags'] = copyTagsValue;
    }
    map['createRule'] = createRule.toMap();
    final crossRegionCopyRulesValue = crossRegionCopyRules;
    if (crossRegionCopyRulesValue != null) {
      map['crossRegionCopyRules'] = Input.encodeList<
              LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule,
              Map<String, dynamic>>(
          crossRegionCopyRulesValue, (value) => value.toMap());
    }
    final deprecateRuleValue = deprecateRule;
    if (deprecateRuleValue != null) {
      map['deprecateRule'] = deprecateRuleValue.toMap();
    }
    final fastRestoreRuleValue = fastRestoreRule;
    if (fastRestoreRuleValue != null) {
      map['fastRestoreRule'] = fastRestoreRuleValue.toMap();
    }
    map['name'] = name;
    map['retainRule'] = retainRule.toMap();
    final shareRuleValue = shareRule;
    if (shareRuleValue != null) {
      map['shareRule'] = shareRuleValue.toMap();
    }
    final tagsToAddValue = tagsToAdd;
    if (tagsToAddValue != null) {
      map['tagsToAdd'] = tagsToAddValue;
    }
    final variableTagsValue = variableTags;
    if (variableTagsValue != null) {
      map['variableTags'] = variableTagsValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsSchedule.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsSchedule(
      archiveRule: map['archiveRule'] == null
          ? null
          : LifecyclePolicyPolicyDetailsScheduleArchiveRule.fromMap(
              (map['archiveRule'] as Map).cast<String, dynamic>()),
      copyTags: map['copyTags'] == null ? null : map['copyTags'] as bool,
      createRule: LifecyclePolicyPolicyDetailsScheduleCreateRule.fromMap(
          (map['createRule'] as Map).cast<String, dynamic>()),
      crossRegionCopyRules: map['crossRegionCopyRules'] == null
          ? null
          : Input.decodeList<
                  LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule>(
              map['crossRegionCopyRules'],
              (value) => LifecyclePolicyPolicyDetailsScheduleCrossRegionCopyRule
                  .fromMap((value as Map).cast<String, dynamic>())),
      deprecateRule: map['deprecateRule'] == null
          ? null
          : LifecyclePolicyPolicyDetailsScheduleDeprecateRule.fromMap(
              (map['deprecateRule'] as Map).cast<String, dynamic>()),
      fastRestoreRule: map['fastRestoreRule'] == null
          ? null
          : LifecyclePolicyPolicyDetailsScheduleFastRestoreRule.fromMap(
              (map['fastRestoreRule'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      retainRule: LifecyclePolicyPolicyDetailsScheduleRetainRule.fromMap(
          (map['retainRule'] as Map).cast<String, dynamic>()),
      shareRule: map['shareRule'] == null
          ? null
          : LifecyclePolicyPolicyDetailsScheduleShareRule.fromMap(
              (map['shareRule'] as Map).cast<String, dynamic>()),
      tagsToAdd: map['tagsToAdd'] == null
          ? null
          : (map['tagsToAdd'] as Map).cast<String, String>(),
      variableTags: map['variableTags'] == null
          ? null
          : (map['variableTags'] as Map).cast<String, String>(),
    );
  }
}
