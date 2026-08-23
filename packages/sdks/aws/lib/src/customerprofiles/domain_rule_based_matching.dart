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
  /// A block that configures how the rule-based matching process should match profiles. You can have up to 15 `rule` in the `natchingRules`. Documented below.
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
  /// [matchingRules] A block that configures how the rule-based matching process should match profiles. You can have up to 15 `rule` in the `natchingRules`. Documented below.
  /// [maxAllowedRuleLevelForMatching] Indicates the maximum allowed rule level for matching.
  /// [maxAllowedRuleLevelForMerging] Indicates the maximum allowed rule level for merging.
  /// [status] Optional.
  const DomainRuleBasedMatching({
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
      attributeTypesSelector: (() { final guardedValue = map['attributeTypesSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRuleBasedMatchingAttributeTypesSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conflictResolution: (() { final guardedValue = map['conflictResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRuleBasedMatchingConflictResolution.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      exportingConfig: (() { final guardedValue = map['exportingConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainRuleBasedMatchingExportingConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      matchingRules: (() { final guardedValue = map['matchingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainRuleBasedMatchingMatchingRule>(guardedValue, (value) => DomainRuleBasedMatchingMatchingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxAllowedRuleLevelForMatching: (() { final guardedValue = map['maxAllowedRuleLevelForMatching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxAllowedRuleLevelForMerging: (() { final guardedValue = map['maxAllowedRuleLevelForMerging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
