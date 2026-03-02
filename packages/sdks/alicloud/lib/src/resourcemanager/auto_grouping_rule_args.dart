// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_grouping_rule_rule_content.dart';

/// {@template pulumi_resourcemanager_auto_grouping_rule_auto_grouping_rule_args_doc}
/// The set of arguments for AutoGroupingRule.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_auto_grouping_rule_auto_grouping_rule_args_doc}
class AutoGroupingRuleArgs {
  /// The IDs of regions to be excluded. Separate multiple IDs with commas (,).
  final pulumi.Input<String>? excludeRegionIdsScope;
  /// The IDs of resource groups to be excluded. Separate multiple IDs with commas (,).
  final pulumi.Input<String>? excludeResourceGroupIdsScope;
  /// The IDs of resources to be excluded. Separate multiple IDs with commas (,).
  final pulumi.Input<String>? excludeResourceIdsScope;
  /// The resource types to be excluded. Separate multiple resource types with commas (,).
  final pulumi.Input<String>? excludeResourceTypesScope;
  /// The IDs of regions. Separate multiple IDs with commas (,).
  final pulumi.Input<String>? regionIdsScope;
  /// The IDs of resource groups. Separate multiple IDs with commas (,).
  final pulumi.Input<String>? resourceGroupIdsScope;
  /// The IDs of resources. Separate multiple IDs with commas (,).
  final pulumi.Input<String>? resourceIdsScope;
  /// The resource types. Separate multiple resource types with commas (,).
  final pulumi.Input<String>? resourceTypesScope;
  /// The content records of the rule. See `rule_contents` below.
  final pulumi.Input<List<AutoGroupingRuleRuleContent>> ruleContents;
  /// The description of the rule.
  final pulumi.Input<String>? ruleDesc;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;
  /// The type of the rule. Valid values:
  final pulumi.Input<String> ruleType;

  /// Creates a new [AutoGroupingRuleArgs].
  /// [excludeRegionIdsScope] The IDs of regions to be excluded. Separate multiple IDs with commas (,).
  /// [excludeResourceGroupIdsScope] The IDs of resource groups to be excluded. Separate multiple IDs with commas (,).
  /// [excludeResourceIdsScope] The IDs of resources to be excluded. Separate multiple IDs with commas (,).
  /// [excludeResourceTypesScope] The resource types to be excluded. Separate multiple resource types with commas (,).
  /// [regionIdsScope] The IDs of regions. Separate multiple IDs with commas (,).
  /// [resourceGroupIdsScope] The IDs of resource groups. Separate multiple IDs with commas (,).
  /// [resourceIdsScope] The IDs of resources. Separate multiple IDs with commas (,).
  /// [resourceTypesScope] The resource types. Separate multiple resource types with commas (,).
  /// [ruleContents] The content records of the rule. See `rule_contents` below.
  /// [ruleDesc] The description of the rule.
  /// [ruleName] The name of the rule.
  /// [ruleType] The type of the rule. Valid values:
  AutoGroupingRuleArgs({
    this.excludeRegionIdsScope,
    this.excludeResourceGroupIdsScope,
    this.excludeResourceIdsScope,
    this.excludeResourceTypesScope,
    this.regionIdsScope,
    this.resourceGroupIdsScope,
    this.resourceIdsScope,
    this.resourceTypesScope,
    required this.ruleContents,
    this.ruleDesc,
    required this.ruleName,
    required this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeRegionIdsScope': ?excludeRegionIdsScope,
      'excludeResourceGroupIdsScope': ?excludeResourceGroupIdsScope,
      'excludeResourceIdsScope': ?excludeResourceIdsScope,
      'excludeResourceTypesScope': ?excludeResourceTypesScope,
      'regionIdsScope': ?regionIdsScope,
      'resourceGroupIdsScope': ?resourceGroupIdsScope,
      'resourceIdsScope': ?resourceIdsScope,
      'resourceTypesScope': ?resourceTypesScope,
      'ruleContents': pulumi.Input.mapInputValue<List<AutoGroupingRuleRuleContent>, List<Map<String, dynamic>>>(ruleContents, (value) => pulumi.Input.encodeList<AutoGroupingRuleRuleContent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ruleDesc': ?ruleDesc,
      'ruleName': ruleName,
      'ruleType': ruleType,
    };
  }

  factory AutoGroupingRuleArgs.fromMap(Map<String, dynamic> map) {
    return AutoGroupingRuleArgs(
      excludeRegionIdsScope: map['excludeRegionIdsScope'] == null ? null : (map['excludeRegionIdsScope'] as String).input(),
      excludeResourceGroupIdsScope: map['excludeResourceGroupIdsScope'] == null ? null : (map['excludeResourceGroupIdsScope'] as String).input(),
      excludeResourceIdsScope: map['excludeResourceIdsScope'] == null ? null : (map['excludeResourceIdsScope'] as String).input(),
      excludeResourceTypesScope: map['excludeResourceTypesScope'] == null ? null : (map['excludeResourceTypesScope'] as String).input(),
      regionIdsScope: map['regionIdsScope'] == null ? null : (map['regionIdsScope'] as String).input(),
      resourceGroupIdsScope: map['resourceGroupIdsScope'] == null ? null : (map['resourceGroupIdsScope'] as String).input(),
      resourceIdsScope: map['resourceIdsScope'] == null ? null : (map['resourceIdsScope'] as String).input(),
      resourceTypesScope: map['resourceTypesScope'] == null ? null : (map['resourceTypesScope'] as String).input(),
      ruleContents: (pulumi.Input.decodeList<AutoGroupingRuleRuleContent>(map['ruleContents'], (value) => AutoGroupingRuleRuleContent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ruleDesc: map['ruleDesc'] == null ? null : (map['ruleDesc'] as String).input(),
      ruleName: (map['ruleName'] as String).input(),
      ruleType: (map['ruleType'] as String).input(),
    );
  }
}

