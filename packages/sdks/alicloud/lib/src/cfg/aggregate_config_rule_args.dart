// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_aggregate_config_rule_aggregate_config_rule_args_doc}
/// The set of arguments for AggregateConfigRule.
/// {@endtemplate}
/// {@macro pulumi_cfg_aggregate_config_rule_aggregate_config_rule_args_doc}
class AggregateConfigRuleArgs {
  /// The name of the rule.
  final pulumi.Input<String> aggregateConfigRuleName;

  /// The Aggregator Id.
  final pulumi.Input<String> aggregatorId;

  /// The trigger type of the rule. Valid values:
  /// - `ConfigurationItemChangeNotification`: The rule is triggered by configuration changes.
  /// - `ScheduledNotification`: The rule is periodically triggered.
  /// &gt; **NOTE:** Separate multiple trigger types with commas (,).
  final pulumi.Input<String> configRuleTriggerTypes;

  /// The description of the rule.
  final pulumi.Input<String>? description;

  /// The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  final pulumi.Input<String>? excludeResourceIdsScope;

  /// The settings map of the input parameters for the rule.
  final pulumi.Input<Map<String, String>>? inputParameters;

  /// The frequency of the compliance evaluations. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`. System default value is `TwentyFour_Hours` and valid when the `config_rule_trigger_types` is `ScheduledNotification`.
  final pulumi.Input<String>? maximumExecutionFrequency;

  /// The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  final pulumi.Input<String>? regionIdsScope;

  /// The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  final pulumi.Input<String>? resourceGroupIdsScope;

  /// Resource types to be evaluated. [Alibaba Cloud services that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  final pulumi.Input<List<String>> resourceTypesScopes;

  /// The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info.
  final pulumi.Input<int> riskLevel;

  /// The identifier of the rule. For a managed rule, the value is the identifier of the managed rule. For a custom rule, the value is the ARN of the custom rule. Using managed rules, refer to [List of Managed rules.](https://www.alibabacloud.com/help/en/doc-detail/127404.htm)
  final pulumi.Input<String> sourceIdentifier;

  /// Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values: `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule.
  final pulumi.Input<String> sourceOwner;

  /// The rule status. The valid values: `ACTIVE`, `INACTIVE`.
  final pulumi.Input<String>? status;

  /// The rule monitors the tag key, only applies to rules created based on managed rules.
  final pulumi.Input<String>? tagKeyScope;

  /// The rule monitors the tag value, use with the `tag_key_scope` options. only applies to rules created based on managed rules.
  final pulumi.Input<String>? tagValueScope;

  /// Creates a new [AggregateConfigRuleArgs].
  /// [aggregateConfigRuleName] The name of the rule.
  /// [aggregatorId] The Aggregator Id.
  /// [configRuleTriggerTypes] The trigger type of the rule. Valid values:
  /// [description] The description of the rule.
  /// [excludeResourceIdsScope] The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  /// [inputParameters] The settings map of the input parameters for the rule.
  /// [maximumExecutionFrequency] The frequency of the compliance evaluations. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`. System default value is `TwentyFour_Hours` and valid when the `config_rule_trigger_types` is `ScheduledNotification`.
  /// [regionIdsScope] The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  /// [resourceGroupIdsScope] The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  /// [resourceTypesScopes] Resource types to be evaluated. [Alibaba Cloud services that support Cloud Config.](https://www.alibabacloud.com/help/en/doc-detail/127411.htm)
  /// [riskLevel] The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info.
  /// [sourceIdentifier] The identifier of the rule. For a managed rule, the value is the identifier of the managed rule. For a custom rule, the value is the ARN of the custom rule. Using managed rules, refer to [List of Managed rules.](https://www.alibabacloud.com/help/en/doc-detail/127404.htm)
  /// [sourceOwner] Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values: `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule.
  /// [status] The rule status. The valid values: `ACTIVE`, `INACTIVE`.
  /// [tagKeyScope] The rule monitors the tag key, only applies to rules created based on managed rules.
  /// [tagValueScope] The rule monitors the tag value, use with the `tag_key_scope` options. only applies to rules created based on managed rules.
  AggregateConfigRuleArgs({
    required this.aggregateConfigRuleName,
    required this.aggregatorId,
    required this.configRuleTriggerTypes,
    this.description,
    this.excludeResourceIdsScope,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.regionIdsScope,
    this.resourceGroupIdsScope,
    required this.resourceTypesScopes,
    required this.riskLevel,
    required this.sourceIdentifier,
    required this.sourceOwner,
    this.status,
    this.tagKeyScope,
    this.tagValueScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateConfigRuleName': aggregateConfigRuleName,
      'aggregatorId': aggregatorId,
      'configRuleTriggerTypes': configRuleTriggerTypes,
      'description': ?description,
      'excludeResourceIdsScope': ?excludeResourceIdsScope,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'regionIdsScope': ?regionIdsScope,
      'resourceGroupIdsScope': ?resourceGroupIdsScope,
      'resourceTypesScopes': resourceTypesScopes,
      'riskLevel': riskLevel,
      'sourceIdentifier': sourceIdentifier,
      'sourceOwner': sourceOwner,
      'status': ?status,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
    };
  }

  factory AggregateConfigRuleArgs.fromMap(Map<String, dynamic> map) {
    return AggregateConfigRuleArgs(
      aggregateConfigRuleName: pulumi.Input.fromValue(
        map['aggregateConfigRuleName'] as String,
      ),
      aggregatorId: pulumi.Input.fromValue(map['aggregatorId'] as String),
      configRuleTriggerTypes: pulumi.Input.fromValue(
        map['configRuleTriggerTypes'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      excludeResourceIdsScope: (() {
        final guardedValue = map['excludeResourceIdsScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inputParameters: (() {
        final guardedValue = map['inputParameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      maximumExecutionFrequency: (() {
        final guardedValue = map['maximumExecutionFrequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionIdsScope: (() {
        final guardedValue = map['regionIdsScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupIdsScope: (() {
        final guardedValue = map['resourceGroupIdsScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceTypesScopes: pulumi.Input.fromValue(
        (map['resourceTypesScopes'] as List).cast<String>(),
      ),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as int),
      sourceIdentifier: pulumi.Input.fromValue(
        map['sourceIdentifier'] as String,
      ),
      sourceOwner: pulumi.Input.fromValue(map['sourceOwner'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagKeyScope: (() {
        final guardedValue = map['tagKeyScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tagValueScope: (() {
        final guardedValue = map['tagValueScope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
