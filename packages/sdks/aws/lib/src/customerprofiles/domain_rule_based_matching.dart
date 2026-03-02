// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_rule_based_matching_attribute_types_selector.dart';
import 'domain_rule_based_matching_conflict_resolution.dart';
import 'domain_rule_based_matching_exporting_config.dart';
import 'domain_rule_based_matching_matching_rule.dart';

class DomainRuleBasedMatching {
  /// A block that configures information about the `AttributeTypesSelector` where the rule-based identity resolution uses to match profiles. Documented below.
  final pulumi.Input<DomainRuleBasedMatchingAttributeTypesSelector>? attributeTypesSelector;
  /// A block that specifies how the auto-merging process should resolve conflicts between different profiles. Documented below.
  final pulumi.Input<DomainRuleBasedMatchingConflictResolution>? conflictResolution;
  /// The flag that enables the rule-based matching process of duplicate profiles.
  final pulumi.Input<bool> enabled;
  /// A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  final pulumi.Input<DomainRuleBasedMatchingExportingConfig>? exportingConfig;
  /// A block that configures how the rule-based matching process should match profiles. You can have up to 15 `rule` in the `natching_rules`. Documented below.
  final pulumi.Input<List<DomainRuleBasedMatchingMatchingRule>>? matchingRules;
  /// Indicates the maximum allowed rule level for matching.
  final pulumi.Input<int>? maxAllowedRuleLevelForMatching;
  /// Indicates the maximum allowed rule level for merging.
  final pulumi.Input<int>? maxAllowedRuleLevelForMerging;
  final pulumi.Input<String>? status;

  /// Creates a new [DomainRuleBasedMatching].
  /// [attributeTypesSelector] A block that configures information about the `AttributeTypesSelector` where the rule-based identity resolution uses to match profiles. Documented below.
  /// [conflictResolution] A block that specifies how the auto-merging process should resolve conflicts between different profiles. Documented below.
  /// [enabled] The flag that enables the rule-based matching process of duplicate profiles.
  /// [exportingConfig] A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  /// [matchingRules] A block that configures how the rule-based matching process should match profiles. You can have up to 15 `rule` in the `natching_rules`. Documented below.
  /// [maxAllowedRuleLevelForMatching] Indicates the maximum allowed rule level for matching.
  /// [maxAllowedRuleLevelForMerging] Indicates the maximum allowed rule level for merging.
  /// [status] Optional.
  DomainRuleBasedMatching({
    this.attributeTypesSelector,
    this.conflictResolution,
    required this.enabled,
    this.exportingConfig,
    this.matchingRules,
    this.maxAllowedRuleLevelForMatching,
    this.maxAllowedRuleLevelForMerging,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeTypesSelector': ?pulumi.Input.mapOptionalInputValue<DomainRuleBasedMatchingAttributeTypesSelector, Map<String, dynamic>>(attributeTypesSelector, (value) => value.toMap()),
      'conflictResolution': ?pulumi.Input.mapOptionalInputValue<DomainRuleBasedMatchingConflictResolution, Map<String, dynamic>>(conflictResolution, (value) => value.toMap()),
      'enabled': enabled,
      'exportingConfig': ?pulumi.Input.mapOptionalInputValue<DomainRuleBasedMatchingExportingConfig, Map<String, dynamic>>(exportingConfig, (value) => value.toMap()),
      'matchingRules': ?pulumi.Input.mapOptionalInputValue<List<DomainRuleBasedMatchingMatchingRule>, List<Map<String, dynamic>>>(matchingRules, (value) => pulumi.Input.encodeList<DomainRuleBasedMatchingMatchingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxAllowedRuleLevelForMatching': ?maxAllowedRuleLevelForMatching,
      'maxAllowedRuleLevelForMerging': ?maxAllowedRuleLevelForMerging,
      'status': ?status,
    };
  }

  factory DomainRuleBasedMatching.fromMap(Map<String, dynamic> map) {
    return DomainRuleBasedMatching(
      attributeTypesSelector: map['attributeTypesSelector'] == null ? null : (DomainRuleBasedMatchingAttributeTypesSelector.fromMap((map['attributeTypesSelector'] as Map).cast<String, dynamic>())).input(),
      conflictResolution: map['conflictResolution'] == null ? null : (DomainRuleBasedMatchingConflictResolution.fromMap((map['conflictResolution'] as Map).cast<String, dynamic>())).input(),
      enabled: (map['enabled'] as bool).input(),
      exportingConfig: map['exportingConfig'] == null ? null : (DomainRuleBasedMatchingExportingConfig.fromMap((map['exportingConfig'] as Map).cast<String, dynamic>())).input(),
      matchingRules: map['matchingRules'] == null ? null : (pulumi.Input.decodeList<DomainRuleBasedMatchingMatchingRule>(map['matchingRules'], (value) => DomainRuleBasedMatchingMatchingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      maxAllowedRuleLevelForMatching: map['maxAllowedRuleLevelForMatching'] == null ? null : (map['maxAllowedRuleLevelForMatching'] as int).input(),
      maxAllowedRuleLevelForMerging: map['maxAllowedRuleLevelForMerging'] == null ? null : (map['maxAllowedRuleLevelForMerging'] as int).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

