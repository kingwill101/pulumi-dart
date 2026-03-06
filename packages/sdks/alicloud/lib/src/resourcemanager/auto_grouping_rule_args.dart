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
  const AutoGroupingRuleArgs({
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
      excludeRegionIdsScope: (() { final guardedValue = map['excludeRegionIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeResourceGroupIdsScope: (() { final guardedValue = map['excludeResourceGroupIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeResourceIdsScope: (() { final guardedValue = map['excludeResourceIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeResourceTypesScope: (() { final guardedValue = map['excludeResourceTypesScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionIdsScope: (() { final guardedValue = map['regionIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupIdsScope: (() { final guardedValue = map['resourceGroupIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdsScope: (() { final guardedValue = map['resourceIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypesScope: (() { final guardedValue = map['resourceTypesScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleContents: pulumi.Input.fromValue(pulumi.Input.decodeList<AutoGroupingRuleRuleContent>(map['ruleContents']!, (value) => AutoGroupingRuleRuleContent.fromMap((value as Map).cast<String, dynamic>()))),
      ruleDesc: (() { final guardedValue = map['ruleDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      ruleType: pulumi.Input.fromValue(map['ruleType'] as String),
    );
  }
}

