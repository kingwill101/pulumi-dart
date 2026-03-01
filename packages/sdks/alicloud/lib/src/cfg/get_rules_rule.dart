// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_compliance.dart';

class GetRulesRule {
  /// The ID of the Alibaba Cloud account.
  final String accountId;
  /// The compliance package ID.
  final String compliancePackId;
  /// The information about the compliance evaluations based on the rule.
  final List<GetRulesRuleCompliance> compliances;
  /// The ARN of the Config Rule.
  final String configRuleArn;
  /// The ID of the Config Rule.
  final String configRuleId;
  /// Field `config_rule_state` has been deprecated from provider version 1.124.1. New field `status` instead.
  final String configRuleState;
  /// (Available since v1.124.1) A list of trigger types of config rule.
  final String configRuleTriggerTypes;
  /// The description of the Config Rule.
  final String description;
  /// Event source of the Config Rule.
  final String eventSource;
  /// (Available since v1.124.1) The scope of exclude of resource ids.
  final String excludeResourceIdsScope;
  /// The ID of the Config Rule.
  final String id;
  /// The input parameters of the Config Rule.
  final Map<String, String> inputParameters;
  /// (Available since v1.124.1) The frequency of maximum execution.
  final String maximumExecutionFrequency;
  /// the timestamp of the Config Rule modified.
  final String modifiedTimestamp;
  /// (Available since v1.124.1) The scope of region ids.
  final String regionIdsScope;
  /// (Available since v1.124.1) The scope of resource group ids.
  final String resourceGroupIdsScope;
  /// (Available since v1.124.1) The scope of resource types.
  final List<String> resourceTypesScopes;
  /// The risk level of Config Rule. Valid values: `1`: Critical ,`2`: Warning , `3`: Info.
  final int riskLevel;
  /// The name of config rule.
  final String ruleName;
  /// The types of the resources to be evaluated against the rule.
  final List<String> scopeComplianceResourceTypes;
  /// Rule trigger mechanism.
  final String sourceDetailMessageType;
  /// The identifier of the managed rule or the arn of the custom function.
  final String sourceIdentifier;
  /// Rule execution cycle.
  final String sourceMaximumExecutionFrequency;
  /// The source owner of the Config Rule.
  final String sourceOwner;
  /// The status of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  final String status;
  /// (Available since v1.124.1) The scope of tag key.
  final String tagKeyScope;
  /// (Available since v1.124.1) The scope of tag value.
  final String tagValueScope;

  /// Creates a new [GetRulesRule].
  /// [accountId] The ID of the Alibaba Cloud account.
  /// [compliancePackId] The compliance package ID.
  /// [compliances] The information about the compliance evaluations based on the rule.
  /// [configRuleArn] The ARN of the Config Rule.
  /// [configRuleId] The ID of the Config Rule.
  /// [configRuleState] Field `config_rule_state` has been deprecated from provider version 1.124.1. New field `status` instead.
  /// [configRuleTriggerTypes] (Available since v1.124.1) A list of trigger types of config rule.
  /// [description] The description of the Config Rule.
  /// [eventSource] Event source of the Config Rule.
  /// [excludeResourceIdsScope] (Available since v1.124.1) The scope of exclude of resource ids.
  /// [id] The ID of the Config Rule.
  /// [inputParameters] The input parameters of the Config Rule.
  /// [maximumExecutionFrequency] (Available since v1.124.1) The frequency of maximum execution.
  /// [modifiedTimestamp] the timestamp of the Config Rule modified.
  /// [regionIdsScope] (Available since v1.124.1) The scope of region ids.
  /// [resourceGroupIdsScope] (Available since v1.124.1) The scope of resource group ids.
  /// [resourceTypesScopes] (Available since v1.124.1) The scope of resource types.
  /// [riskLevel] The risk level of Config Rule. Valid values: `1`: Critical ,`2`: Warning , `3`: Info.
  /// [ruleName] The name of config rule.
  /// [scopeComplianceResourceTypes] The types of the resources to be evaluated against the rule.
  /// [sourceDetailMessageType] Rule trigger mechanism.
  /// [sourceIdentifier] The identifier of the managed rule or the arn of the custom function.
  /// [sourceMaximumExecutionFrequency] Rule execution cycle.
  /// [sourceOwner] The source owner of the Config Rule.
  /// [status] The status of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  /// [tagKeyScope] (Available since v1.124.1) The scope of tag key.
  /// [tagValueScope] (Available since v1.124.1) The scope of tag value.
  GetRulesRule({
    required this.accountId,
    required this.compliancePackId,
    required this.compliances,
    required this.configRuleArn,
    required this.configRuleId,
    required this.configRuleState,
    required this.configRuleTriggerTypes,
    required this.description,
    required this.eventSource,
    required this.excludeResourceIdsScope,
    required this.id,
    required this.inputParameters,
    required this.maximumExecutionFrequency,
    required this.modifiedTimestamp,
    required this.regionIdsScope,
    required this.resourceGroupIdsScope,
    required this.resourceTypesScopes,
    required this.riskLevel,
    required this.ruleName,
    required this.scopeComplianceResourceTypes,
    required this.sourceDetailMessageType,
    required this.sourceIdentifier,
    required this.sourceMaximumExecutionFrequency,
    required this.sourceOwner,
    required this.status,
    required this.tagKeyScope,
    required this.tagValueScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'compliancePackId': compliancePackId,
      'compliances': pulumi.Input.encodeList<GetRulesRuleCompliance, Map<String, dynamic>>(compliances, (value) => value.toMap()),
      'configRuleArn': configRuleArn,
      'configRuleId': configRuleId,
      'configRuleState': configRuleState,
      'configRuleTriggerTypes': configRuleTriggerTypes,
      'description': description,
      'eventSource': eventSource,
      'excludeResourceIdsScope': excludeResourceIdsScope,
      'id': id,
      'inputParameters': inputParameters,
      'maximumExecutionFrequency': maximumExecutionFrequency,
      'modifiedTimestamp': modifiedTimestamp,
      'regionIdsScope': regionIdsScope,
      'resourceGroupIdsScope': resourceGroupIdsScope,
      'resourceTypesScopes': resourceTypesScopes,
      'riskLevel': riskLevel,
      'ruleName': ruleName,
      'scopeComplianceResourceTypes': scopeComplianceResourceTypes,
      'sourceDetailMessageType': sourceDetailMessageType,
      'sourceIdentifier': sourceIdentifier,
      'sourceMaximumExecutionFrequency': sourceMaximumExecutionFrequency,
      'sourceOwner': sourceOwner,
      'status': status,
      'tagKeyScope': tagKeyScope,
      'tagValueScope': tagValueScope,
    };
  }

  factory GetRulesRule.fromMap(Map<String, dynamic> map) {
    return GetRulesRule(
      accountId: map['accountId'] as String,
      compliancePackId: map['compliancePackId'] as String,
      compliances: pulumi.Input.decodeList<GetRulesRuleCompliance>(map['compliances'], (value) => GetRulesRuleCompliance.fromMap((value as Map).cast<String, dynamic>())),
      configRuleArn: map['configRuleArn'] as String,
      configRuleId: map['configRuleId'] as String,
      configRuleState: map['configRuleState'] as String,
      configRuleTriggerTypes: map['configRuleTriggerTypes'] as String,
      description: map['description'] as String,
      eventSource: map['eventSource'] as String,
      excludeResourceIdsScope: map['excludeResourceIdsScope'] as String,
      id: map['id'] as String,
      inputParameters: (map['inputParameters'] as Map).cast<String, String>(),
      maximumExecutionFrequency: map['maximumExecutionFrequency'] as String,
      modifiedTimestamp: map['modifiedTimestamp'] as String,
      regionIdsScope: map['regionIdsScope'] as String,
      resourceGroupIdsScope: map['resourceGroupIdsScope'] as String,
      resourceTypesScopes: (map['resourceTypesScopes'] as List).cast<String>(),
      riskLevel: map['riskLevel'] as int,
      ruleName: map['ruleName'] as String,
      scopeComplianceResourceTypes: (map['scopeComplianceResourceTypes'] as List).cast<String>(),
      sourceDetailMessageType: map['sourceDetailMessageType'] as String,
      sourceIdentifier: map['sourceIdentifier'] as String,
      sourceMaximumExecutionFrequency: map['sourceMaximumExecutionFrequency'] as String,
      sourceOwner: map['sourceOwner'] as String,
      status: map['status'] as String,
      tagKeyScope: map['tagKeyScope'] as String,
      tagValueScope: map['tagValueScope'] as String,
    );
  }
}

