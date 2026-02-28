// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_rule_based_matching_attribute_types_selector.dart';
import 'domain_rule_based_matching_conflict_resolution.dart';
import 'domain_rule_based_matching_exporting_config.dart';
import 'domain_rule_based_matching_matching_rule.dart';

class DomainRuleBasedMatching {
  /// A block that configures information about the `AttributeTypesSelector` where the rule-based identity resolution uses to match profiles. Documented below.
  final DomainRuleBasedMatchingAttributeTypesSelector? attributeTypesSelector;

  /// A block that specifies how the auto-merging process should resolve conflicts between different profiles. Documented below.
  final DomainRuleBasedMatchingConflictResolution? conflictResolution;

  /// The flag that enables the rule-based matching process of duplicate profiles.
  final bool enabled;

  /// A block that specifies the configuration for exporting Identity Resolution results. Documented below.
  final DomainRuleBasedMatchingExportingConfig? exportingConfig;

  /// A block that configures how the rule-based matching process should match profiles. You can have up to 15 `rule` in the `natching_rules`. Documented below.
  final List<DomainRuleBasedMatchingMatchingRule>? matchingRules;

  /// Indicates the maximum allowed rule level for matching.
  final int? maxAllowedRuleLevelForMatching;

  /// Indicates the maximum allowed rule level for merging.
  final int? maxAllowedRuleLevelForMerging;
  final String? status;

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
    final map = <String, dynamic>{};
    final attributeTypesSelectorValue = attributeTypesSelector;
    if (attributeTypesSelectorValue != null) {
      map['attributeTypesSelector'] = attributeTypesSelectorValue.toMap();
    }
    final conflictResolutionValue = conflictResolution;
    if (conflictResolutionValue != null) {
      map['conflictResolution'] = conflictResolutionValue.toMap();
    }
    map['enabled'] = enabled;
    final exportingConfigValue = exportingConfig;
    if (exportingConfigValue != null) {
      map['exportingConfig'] = exportingConfigValue.toMap();
    }
    final matchingRulesValue = matchingRules;
    if (matchingRulesValue != null) {
      map['matchingRules'] = pulumi.Input.encodeList<
          DomainRuleBasedMatchingMatchingRule,
          Map<String, dynamic>>(matchingRulesValue, (value) => value.toMap());
    }
    final maxAllowedRuleLevelForMatchingValue = maxAllowedRuleLevelForMatching;
    if (maxAllowedRuleLevelForMatchingValue != null) {
      map['maxAllowedRuleLevelForMatching'] =
          maxAllowedRuleLevelForMatchingValue;
    }
    final maxAllowedRuleLevelForMergingValue = maxAllowedRuleLevelForMerging;
    if (maxAllowedRuleLevelForMergingValue != null) {
      map['maxAllowedRuleLevelForMerging'] = maxAllowedRuleLevelForMergingValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DomainRuleBasedMatching.fromMap(Map<String, dynamic> map) {
    return DomainRuleBasedMatching(
      attributeTypesSelector: map['attributeTypesSelector'] == null
          ? null
          : DomainRuleBasedMatchingAttributeTypesSelector.fromMap(
              (map['attributeTypesSelector'] as Map).cast<String, dynamic>()),
      conflictResolution: map['conflictResolution'] == null
          ? null
          : DomainRuleBasedMatchingConflictResolution.fromMap(
              (map['conflictResolution'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] as bool,
      exportingConfig: map['exportingConfig'] == null
          ? null
          : DomainRuleBasedMatchingExportingConfig.fromMap(
              (map['exportingConfig'] as Map).cast<String, dynamic>()),
      matchingRules: map['matchingRules'] == null
          ? null
          : pulumi.Input.decodeList<DomainRuleBasedMatchingMatchingRule>(
              map['matchingRules'],
              (value) => DomainRuleBasedMatchingMatchingRule.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxAllowedRuleLevelForMatching:
          map['maxAllowedRuleLevelForMatching'] == null
              ? null
              : map['maxAllowedRuleLevelForMatching'] as int,
      maxAllowedRuleLevelForMerging:
          map['maxAllowedRuleLevelForMerging'] == null
              ? null
              : map['maxAllowedRuleLevelForMerging'] as int,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
