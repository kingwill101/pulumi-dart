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
    pulumi.Output<String>? excludeRegionIdsScope,
    pulumi.Output<String>? excludeResourceGroupIdsScope,
    pulumi.Output<String>? excludeResourceIdsScope,
    pulumi.Output<String>? excludeResourceTypesScope,
    pulumi.Output<String>? regionIdsScope,
    pulumi.Output<String>? resourceGroupIdsScope,
    pulumi.Output<String>? resourceIdsScope,
    pulumi.Output<String>? resourceTypesScope,
    required pulumi.Output<List<AutoGroupingRuleRuleContent>> ruleContents,
    pulumi.Output<String>? ruleDesc,
    required pulumi.Output<String> ruleName,
    required pulumi.Output<String> ruleType,
  }) :
      excludeRegionIdsScope = pulumi.Input.asOptionalInput<String>(excludeRegionIdsScope),
      excludeResourceGroupIdsScope = pulumi.Input.asOptionalInput<String>(excludeResourceGroupIdsScope),
      excludeResourceIdsScope = pulumi.Input.asOptionalInput<String>(excludeResourceIdsScope),
      excludeResourceTypesScope = pulumi.Input.asOptionalInput<String>(excludeResourceTypesScope),
      regionIdsScope = pulumi.Input.asOptionalInput<String>(regionIdsScope),
      resourceGroupIdsScope = pulumi.Input.asOptionalInput<String>(resourceGroupIdsScope),
      resourceIdsScope = pulumi.Input.asOptionalInput<String>(resourceIdsScope),
      resourceTypesScope = pulumi.Input.asOptionalInput<String>(resourceTypesScope),
      ruleContents = pulumi.Input.asInput<List<AutoGroupingRuleRuleContent>>(ruleContents),
      ruleDesc = pulumi.Input.asOptionalInput<String>(ruleDesc),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      ruleType = pulumi.Input.asInput<String>(ruleType);

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
      excludeRegionIdsScope: map['excludeRegionIdsScope'] == null ? null : pulumi.Output.create<String>(map['excludeRegionIdsScope'] as String),
      excludeResourceGroupIdsScope: map['excludeResourceGroupIdsScope'] == null ? null : pulumi.Output.create<String>(map['excludeResourceGroupIdsScope'] as String),
      excludeResourceIdsScope: map['excludeResourceIdsScope'] == null ? null : pulumi.Output.create<String>(map['excludeResourceIdsScope'] as String),
      excludeResourceTypesScope: map['excludeResourceTypesScope'] == null ? null : pulumi.Output.create<String>(map['excludeResourceTypesScope'] as String),
      regionIdsScope: map['regionIdsScope'] == null ? null : pulumi.Output.create<String>(map['regionIdsScope'] as String),
      resourceGroupIdsScope: map['resourceGroupIdsScope'] == null ? null : pulumi.Output.create<String>(map['resourceGroupIdsScope'] as String),
      resourceIdsScope: map['resourceIdsScope'] == null ? null : pulumi.Output.create<String>(map['resourceIdsScope'] as String),
      resourceTypesScope: map['resourceTypesScope'] == null ? null : pulumi.Output.create<String>(map['resourceTypesScope'] as String),
      ruleContents: pulumi.Output.create<List<AutoGroupingRuleRuleContent>>(pulumi.Input.decodeList<AutoGroupingRuleRuleContent>(map['ruleContents'], (value) => AutoGroupingRuleRuleContent.fromMap((value as Map).cast<String, dynamic>()))),
      ruleDesc: map['ruleDesc'] == null ? null : pulumi.Output.create<String>(map['ruleDesc'] as String),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      ruleType: pulumi.Output.create<String>(map['ruleType'] as String),
    );
  }
}

