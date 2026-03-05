// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_compliance.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The ID of Alicloud account.
  final pulumi.Input<int>? accountId;
  /// compliance information.
  final pulumi.Input<RuleCompliance>? compliance;
  /// Compliance Package ID.
  final pulumi.Input<String>? compliancePackId;
  /// config rule arn.
  final pulumi.Input<String>? configRuleArn;
  /// The ID of the rule.
  final pulumi.Input<String>? configRuleId;
  /// The trigger type of the rule. Valid values:  `ConfigurationItemChangeNotification`: The rule is triggered upon configuration changes. `ScheduledNotification`: The rule is triggered as scheduled.
  final pulumi.Input<String>? configRuleTriggerTypes;
  /// The timestamp when the rule was created.
  final pulumi.Input<int>? createTime;
  /// The description of the rule.
  final pulumi.Input<String>? description;
  /// The event source of the rule.
  final pulumi.Input<String>? eventSource;
  /// The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  final pulumi.Input<String>? excludeResourceIdsScope;
  /// The settings of the input parameters for the rule.
  final pulumi.Input<Map<String, String>>? inputParameters;
  /// The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`.
  final pulumi.Input<String>? maximumExecutionFrequency;
  /// The timestamp when the rule was last modified.
  final pulumi.Input<int>? modifiedTimestamp;
  /// The rule monitors region IDs, separated by commas, only applies to rules created based on managed rules.
  final pulumi.Input<String>? regionIdsScope;
  /// The rule monitors resource group IDs, separated by commas, only applies to rules created based on managed rules.
  final pulumi.Input<String>? resourceGroupIdsScope;
  /// The types of the resources to be evaluated against the rule.
  final pulumi.Input<List<String>>? resourceTypesScopes;
  /// The risk level of the resources that are not compliant with the rule. Valid values:  `1`: critical `2`: warning `3`: info
  final pulumi.Input<int>? riskLevel;
  /// The name of the rule.
  final pulumi.Input<String>? ruleName;
  /// Field 'scope_compliance_resource_types' has been deprecated from provider version 1.124.1. New field 'resource_types_scope' instead.
  final pulumi.Input<String>? scopeComplianceResourceTypes;
  /// Field 'source_detail_message_type' has been deprecated from provider version 1.124.1. New field 'config_rule_trigger_types' instead.
  final pulumi.Input<String>? sourceDetailMessageType;
  /// The identifier of the rule.  For a managed rule, the value is the name of the managed rule. For a custom rule, the value is the ARN of the custom rule.
  final pulumi.Input<String>? sourceIdentifier;
  /// Field 'source_maximum_execution_frequency' has been deprecated from provider version 1.124.1. New field 'maximum_execution_frequency' instead.
  final pulumi.Input<String>? sourceMaximumExecutionFrequency;
  /// Specifies whether you or Alibaba Cloud owns and manages the rule. Valid values:  `CUSTOM_FC`: The rule is a custom rule and you own the rule. `ALIYUN`: The rule is a managed rule and Alibaba Cloud owns the rule
  final pulumi.Input<String>? sourceOwner;
  /// The status of the rule. Valid values: ACTIVE: The rule is monitoring the configurations of target resources. DELETING_RESULTS: The compliance evaluation result returned by the rule is being deleted. EVALUATING: The rule is triggered and is evaluating whether the configurations of target resources are compliant. INACTIVE: The rule is disabled from monitoring the configurations of target resources.
  final pulumi.Input<String>? status;
  /// The rule monitors the tag key, only applies to rules created based on managed rules.
  final pulumi.Input<String>? tagKeyScope;
  /// The rule monitors the tag value, only applies to rules created based on managed rules.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? tagValueScope;

  /// Creates a new [RuleState].
  /// [accountId] The ID of Alicloud account.
  /// [compliance] compliance information.
  /// [compliancePackId] Compliance Package ID.
  /// [configRuleArn] config rule arn.
  /// [configRuleId] The ID of the rule.
  /// [configRuleTriggerTypes] The trigger type of the rule. Valid values:  `ConfigurationItemChangeNotification`: The rule is triggered upon configuration changes. `ScheduledNotification`: The rule is triggered as scheduled.
  /// [createTime] The timestamp when the rule was created.
  /// [description] The description of the rule.
  /// [eventSource] The event source of the rule.
  /// [excludeResourceIdsScope] The rule monitors excluded resource IDs, multiple of which are separated by commas, only applies to rules created based on managed rules, , custom rule this field is empty.
  /// [inputParameters] The settings of the input parameters for the rule.
  /// [maximumExecutionFrequency] The frequency of the compliance evaluations, it is required if the ConfigRuleTriggerTypes value is ScheduledNotification. Valid values:  `One_Hour`, `Three_Hours`, `Six_Hours`, `Twelve_Hours`, `TwentyFour_Hours`.
  /// [modifiedTimestamp] The timestamp when the rule was last modified.
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
  RuleState({
    this.accountId,
    this.compliance,
    this.compliancePackId,
    this.configRuleArn,
    this.configRuleId,
    this.configRuleTriggerTypes,
    this.createTime,
    this.description,
    this.eventSource,
    this.excludeResourceIdsScope,
    this.inputParameters,
    this.maximumExecutionFrequency,
    this.modifiedTimestamp,
    this.regionIdsScope,
    this.resourceGroupIdsScope,
    this.resourceTypesScopes,
    this.riskLevel,
    this.ruleName,
    this.scopeComplianceResourceTypes,
    this.sourceDetailMessageType,
    this.sourceIdentifier,
    this.sourceMaximumExecutionFrequency,
    this.sourceOwner,
    this.status,
    this.tagKeyScope,
    this.tagValueScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'compliance': ?pulumi.Input.mapOptionalInputValue<RuleCompliance, Map<String, dynamic>>(compliance, (value) => value.toMap()),
      'compliancePackId': ?compliancePackId,
      'configRuleArn': ?configRuleArn,
      'configRuleId': ?configRuleId,
      'configRuleTriggerTypes': ?configRuleTriggerTypes,
      'createTime': ?createTime,
      'description': ?description,
      'eventSource': ?eventSource,
      'excludeResourceIdsScope': ?excludeResourceIdsScope,
      'inputParameters': ?inputParameters,
      'maximumExecutionFrequency': ?maximumExecutionFrequency,
      'modifiedTimestamp': ?modifiedTimestamp,
      'regionIdsScope': ?regionIdsScope,
      'resourceGroupIdsScope': ?resourceGroupIdsScope,
      'resourceTypesScopes': ?resourceTypesScopes,
      'riskLevel': ?riskLevel,
      'ruleName': ?ruleName,
      'scopeComplianceResourceTypes': ?scopeComplianceResourceTypes,
      'sourceDetailMessageType': ?sourceDetailMessageType,
      'sourceIdentifier': ?sourceIdentifier,
      'sourceMaximumExecutionFrequency': ?sourceMaximumExecutionFrequency,
      'sourceOwner': ?sourceOwner,
      'status': ?status,
      'tagKeyScope': ?tagKeyScope,
      'tagValueScope': ?tagValueScope,
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      compliance: (() { final guardedValue = map['compliance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleCompliance.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      compliancePackId: (() { final guardedValue = map['compliancePackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configRuleArn: (() { final guardedValue = map['configRuleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configRuleId: (() { final guardedValue = map['configRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configRuleTriggerTypes: (() { final guardedValue = map['configRuleTriggerTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventSource: (() { final guardedValue = map['eventSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludeResourceIdsScope: (() { final guardedValue = map['excludeResourceIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputParameters: (() { final guardedValue = map['inputParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maximumExecutionFrequency: (() { final guardedValue = map['maximumExecutionFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedTimestamp: (() { final guardedValue = map['modifiedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regionIdsScope: (() { final guardedValue = map['regionIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupIdsScope: (() { final guardedValue = map['resourceGroupIdsScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceTypesScopes: (() { final guardedValue = map['resourceTypesScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      riskLevel: (() { final guardedValue = map['riskLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeComplianceResourceTypes: (() { final guardedValue = map['scopeComplianceResourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDetailMessageType: (() { final guardedValue = map['sourceDetailMessageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceIdentifier: (() { final guardedValue = map['sourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceMaximumExecutionFrequency: (() { final guardedValue = map['sourceMaximumExecutionFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceOwner: (() { final guardedValue = map['sourceOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagKeyScope: (() { final guardedValue = map['tagKeyScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValueScope: (() { final guardedValue = map['tagValueScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

