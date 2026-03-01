// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cfg_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_cfg_rule_rule_args_doc}
class RuleArgs {
  /// The trigger type of the rule. Valid values:  `ConfigurationItemChangeNotification`: The rule is triggered upon configuration changes. `ScheduledNotification`: The rule is triggered as scheduled.
  final pulumi.Input<String>? configRuleTriggerTypes;
  /// The description of the rule.
  final pulumi.Input<String>? description;
  /// The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  final pulumi.Input<String>? excludeResourceIdsScope;
  /// The settings of the input parameters for the rule.
  final pulumi.Input<Map<String, String>>? inputParameters;
  /// The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`.
  final pulumi.Input<String>? maximumExecutionFrequency;
  /// The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  final pulumi.Input<String>? regionIdsScope;
  /// The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  final pulumi.Input<String>? resourceGroupIdsScope;
  /// The types of the resources to be evaluated against the rule.
  final pulumi.Input<List<String>>? resourceTypesScopes;
  /// The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info
  final pulumi.Input<int> riskLevel;
  /// The name of the rule.
  final pulumi.Input<String> ruleName;
  /// Field 'scope_compliance_resource_types' has been deprecated from provider version 1.124.1. New field 'resource_types_scope' instead.
  final pulumi.Input<String>? scopeComplianceResourceTypes;
  /// Field 'source_detail_message_type' has been deprecated from provider version 1.124.1. New field 'config_rule_trigger_types' instead.
  final pulumi.Input<String>? sourceDetailMessageType;
  /// The identifier of the rule.  For a managed rule, the value is the name of the managed rule. For a custom rule, the value is the ARN of the custom rule.
  final pulumi.Input<String> sourceIdentifier;
  /// Field 'source_maximum_execution_frequency' has been deprecated from provider version 1.124.1. New field 'maximum_execution_frequency' instead.
  final pulumi.Input<String>? sourceMaximumExecutionFrequency;
  /// Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values:  `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule
  final pulumi.Input<String> sourceOwner;
  /// The status of the rule. Valid values: ACTIVE: The rule is monitoring the configurations of target resources. DELETING_RESULTS: The compliance evaluation result returned by the rule is being deleted. EVALUATING: The rule is triggered and is evaluating whether the configurations of target resources are compliant. INACTIVE: The rule is disabled from monitoring the configurations of target resources.
  final pulumi.Input<String>? status;
  /// The rule monitors the tag key, only applies to rules created based on managed rules.
  final pulumi.Input<String>? tagKeyScope;
  /// The rule monitors the tag value, only applies to rules created based on managed rules.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? tagValueScope;

  /// Creates a new [RuleArgs].
  /// [configRuleTriggerTypes] The trigger type of the rule. Valid values:  `ConfigurationItemChangeNotification`: The rule is triggered upon configuration changes. `ScheduledNotification`: The rule is triggered as scheduled.
  /// [description] The description of the rule.
  /// [excludeResourceIdsScope] The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  /// [inputParameters] The settings of the input parameters for the rule.
  /// [maximumExecutionFrequency] The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`.
  /// [regionIdsScope] The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  /// [resourceGroupIdsScope] The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  /// [resourceTypesScopes] The types of the resources to be evaluated against the rule.
  /// [riskLevel] The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info
  /// [ruleName] The name of the rule.
  /// [scopeComplianceResourceTypes] Field 'scope_compliance_resource_types' has been deprecated from provider version 1.124.1. New field 'resource_types_scope' instead.
  /// [sourceDetailMessageType] Field 'source_detail_message_type' has been deprecated from provider version 1.124.1. New field 'config_rule_trigger_types' instead.
  /// [sourceIdentifier] The identifier of the rule.  For a managed rule, the value is the name of the managed rule. For a custom rule, the value is the ARN of the custom rule.
  /// [sourceMaximumExecutionFrequency] Field 'source_maximum_execution_frequency' has been deprecated from provider version 1.124.1. New field 'maximum_execution_frequency' instead.
  /// [sourceOwner] Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values:  `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule
  /// [status] The status of the rule. Valid values: ACTIVE: The rule is monitoring the configurations of target resources. DELETING_RESULTS: The compliance evaluation result returned by the rule is being deleted. EVALUATING: The rule is triggered and is evaluating whether the configurations of target resources are compliant. INACTIVE: The rule is disabled from monitoring the configurations of target resources.
  /// [tagKeyScope] The rule monitors the tag key, only applies to rules created based on managed rules.
  /// [tagValueScope] The rule monitors the tag value, only applies to rules created based on managed rules.
  RuleArgs({
    pulumi.Output<String>? configRuleTriggerTypes,
    pulumi.Output<String>? description,
    pulumi.Output<String>? excludeResourceIdsScope,
    pulumi.Output<Map<String, String>>? inputParameters,
    pulumi.Output<String>? maximumExecutionFrequency,
    pulumi.Output<String>? regionIdsScope,
    pulumi.Output<String>? resourceGroupIdsScope,
    pulumi.Output<List<String>>? resourceTypesScopes,
    required pulumi.Output<int> riskLevel,
    required pulumi.Output<String> ruleName,
    pulumi.Output<String>? scopeComplianceResourceTypes,
    pulumi.Output<String>? sourceDetailMessageType,
    required pulumi.Output<String> sourceIdentifier,
    pulumi.Output<String>? sourceMaximumExecutionFrequency,
    required pulumi.Output<String> sourceOwner,
    pulumi.Output<String>? status,
    pulumi.Output<String>? tagKeyScope,
    pulumi.Output<String>? tagValueScope,
  }) :
      configRuleTriggerTypes = pulumi.Input.asOptionalInput<String>(configRuleTriggerTypes),
      description = pulumi.Input.asOptionalInput<String>(description),
      excludeResourceIdsScope = pulumi.Input.asOptionalInput<String>(excludeResourceIdsScope),
      inputParameters = pulumi.Input.asOptionalInput<Map<String, String>>(inputParameters),
      maximumExecutionFrequency = pulumi.Input.asOptionalInput<String>(maximumExecutionFrequency),
      regionIdsScope = pulumi.Input.asOptionalInput<String>(regionIdsScope),
      resourceGroupIdsScope = pulumi.Input.asOptionalInput<String>(resourceGroupIdsScope),
      resourceTypesScopes = pulumi.Input.asOptionalInput<List<String>>(resourceTypesScopes),
      riskLevel = pulumi.Input.asInput<int>(riskLevel),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      scopeComplianceResourceTypes = pulumi.Input.asOptionalInput<String>(scopeComplianceResourceTypes),
      sourceDetailMessageType = pulumi.Input.asOptionalInput<String>(sourceDetailMessageType),
      sourceIdentifier = pulumi.Input.asInput<String>(sourceIdentifier),
      sourceMaximumExecutionFrequency = pulumi.Input.asOptionalInput<String>(sourceMaximumExecutionFrequency),
      sourceOwner = pulumi.Input.asInput<String>(sourceOwner),
      status = pulumi.Input.asOptionalInput<String>(status),
      tagKeyScope = pulumi.Input.asOptionalInput<String>(tagKeyScope),
      tagValueScope = pulumi.Input.asOptionalInput<String>(tagValueScope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configRuleTriggerTypes': ?configRuleTriggerTypes,
      'description': ?description,
      'excludeResourceIdsScope': ?excludeResourceIdsScope,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'regionIdsScope': ?regionIdsScope,
      'resourceGroupIdsScope': ?resourceGroupIdsScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'riskLevel': riskLevel,
      'ruleName': ruleName,
      'scopeComplianceResourceTypes': ?scopeComplianceResourceTypes,
      'sourceDetailMessageType': ?sourceDetailMessageType,
      'sourceIdentifier': sourceIdentifier,
      'sourceMaximumExecutionFrequency': ?sourceMaximumExecutionFrequency,
      'sourceOwner': sourceOwner,
      'status': ?status,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      configRuleTriggerTypes: map['configRuleTriggerTypes'] == null ? null : pulumi.Output.create<String>(map['configRuleTriggerTypes'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      excludeResourceIdsScope: map['excludeResourceIdsScope'] == null ? null : pulumi.Output.create<String>(map['excludeResourceIdsScope'] as String),
      inputParameters: map['inputParameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['inputParameters'] as Map).cast<String, String>()),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] == null ? null : pulumi.Output.create<String>(map['maximumExecutionFrequency'] as String),
      regionIdsScope: map['regionIdsScope'] == null ? null : pulumi.Output.create<String>(map['regionIdsScope'] as String),
      resourceGroupIdsScope: map['resourceGroupIdsScope'] == null ? null : pulumi.Output.create<String>(map['resourceGroupIdsScope'] as String),
      resourceTypesScopes: map['resourceTypesScopes'] == null ? null : pulumi.Output.create<List<String>>((map['resourceTypesScopes'] as List).cast<String>()),
      riskLevel: pulumi.Output.create<int>(map['riskLevel'] as int),
      ruleName: pulumi.Output.create<String>(map['ruleName'] as String),
      scopeComplianceResourceTypes: map['scopeComplianceResourceTypes'] == null ? null : pulumi.Output.create<String>(map['scopeComplianceResourceTypes'] as String),
      sourceDetailMessageType: map['sourceDetailMessageType'] == null ? null : pulumi.Output.create<String>(map['sourceDetailMessageType'] as String),
      sourceIdentifier: pulumi.Output.create<String>(map['sourceIdentifier'] as String),
      sourceMaximumExecutionFrequency: map['sourceMaximumExecutionFrequency'] == null ? null : pulumi.Output.create<String>(map['sourceMaximumExecutionFrequency'] as String),
      sourceOwner: pulumi.Output.create<String>(map['sourceOwner'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tagKeyScope: map['tagKeyScope'] == null ? null : pulumi.Output.create<String>(map['tagKeyScope'] as String),
      tagValueScope: map['tagValueScope'] == null ? null : pulumi.Output.create<String>(map['tagValueScope'] as String),
    );
  }
}

