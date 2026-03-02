// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AggregateConfigRule resources.
class AggregateConfigRuleState {
  /// The name of the rule.
  final pulumi.Input<String>? aggregateConfigRuleName;
  /// The Aggregator Id.
  final pulumi.Input<String>? aggregatorId;
  /// (Available since v1.141.0) The rule ID of Aggregate Config Rule.
  final pulumi.Input<String>? configRuleId;
  /// The trigger type of the rule. Valid values:
  /// - `ConfigurationItemChangeNotification`: The rule is triggered by configuration changes.
  /// - `ScheduledNotification`: The rule is periodically triggered.
  /// > **NOTE:** Separate multiple trigger types with commas (,).
  final pulumi.Input<String>? configRuleTriggerTypes;
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
  final pulumi.Input<List<String>>? resourceTypesScopes;
  /// The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info.
  final pulumi.Input<int>? riskLevel;
  /// The identifier of the rule. For a managed rule, the value is the identifier of the managed rule. For a custom rule, the value is the ARN of the custom rule. Using managed rules, refer to [List of Managed rules.](https://www.alibabacloud.com/help/en/doc-detail/127404.htm)
  final pulumi.Input<String>? sourceIdentifier;
  /// Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values: `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule.
  final pulumi.Input<String>? sourceOwner;
  /// The rule status. The valid values: `ACTIVE`, `INACTIVE`.
  final pulumi.Input<String>? status;
  /// The rule monitors the tag key, only applies to rules created based on managed rules.
  final pulumi.Input<String>? tagKeyScope;
  /// The rule monitors the tag value, use with the `tag_key_scope` options. only applies to rules created based on managed rules.
  final pulumi.Input<String>? tagValueScope;

  /// Creates a new [AggregateConfigRuleState].
  /// [aggregateConfigRuleName] The name of the rule.
  /// [aggregatorId] The Aggregator Id.
  /// [configRuleId] (Available since v1.141.0) The rule ID of Aggregate Config Rule.
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
  AggregateConfigRuleState({
    this.aggregateConfigRuleName,
    this.aggregatorId,
    this.configRuleId,
    this.configRuleTriggerTypes,
    this.description,
    this.excludeResourceIdsScope,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.regionIdsScope,
    this.resourceGroupIdsScope,
    this.resourceTypesScopes,
    this.riskLevel,
    this.sourceIdentifier,
    this.sourceOwner,
    this.status,
    this.tagKeyScope,
    this.tagValueScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateConfigRuleName': ?aggregateConfigRuleName,
      'aggregatorId': ?aggregatorId,
      'configRuleId': ?configRuleId,
      'configRuleTriggerTypes': ?configRuleTriggerTypes,
      'description': ?description,
      'excludeResourceIdsScope': ?excludeResourceIdsScope,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'regionIdsScope': ?regionIdsScope,
      'resourceGroupIdsScope': ?resourceGroupIdsScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'riskLevel': ?riskLevel,
      'sourceIdentifier': ?sourceIdentifier,
      'sourceOwner': ?sourceOwner,
      'status': ?status,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
    };
  }

  factory AggregateConfigRuleState.fromMap(Map<String, dynamic> map) {
    return AggregateConfigRuleState(
      aggregateConfigRuleName: map['aggregateConfigRuleName'] == null ? null : (map['aggregateConfigRuleName']! as String).input(),
      aggregatorId: map['aggregatorId'] == null ? null : (map['aggregatorId']! as String).input(),
      configRuleId: map['configRuleId'] == null ? null : (map['configRuleId']! as String).input(),
      configRuleTriggerTypes: map['configRuleTriggerTypes'] == null ? null : (map['configRuleTriggerTypes']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      excludeResourceIdsScope: map['excludeResourceIdsScope'] == null ? null : (map['excludeResourceIdsScope']! as String).input(),
      inputParameters: map['inputParameters'] == null ? null : ((map['inputParameters']! as Map).cast<String, String>()).input(),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : (map['maximumExecutionFrequency']! as String).input(),
      regionIdsScope: map['regionIdsScope'] == null ? null : (map['regionIdsScope']! as String).input(),
      resourceGroupIdsScope: map['resourceGroupIdsScope'] == null ? null : (map['resourceGroupIdsScope']! as String).input(),
      resourceTypesScopes: map['resourceTypesScopes'] == null ? null : ((map['resourceTypesScopes']! as List).cast<String>()).input(),
      riskLevel: map['riskLevel'] == null ? null : (map['riskLevel']! as int).input(),
      sourceIdentifier: map['sourceIdentifier'] == null ? null : (map['sourceIdentifier']! as String).input(),
      sourceOwner: map['sourceOwner'] == null ? null : (map['sourceOwner']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tagKeyScope: map['tagKeyScope'] == null ? null : (map['tagKeyScope']! as String).input(),
      tagValueScope: map['tagValueScope'] == null ? null : (map['tagValueScope']! as String).input(),
    );
  }
}

