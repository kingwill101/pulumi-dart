// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_rules_rule_compliance.dart';

class GetRulesRule {
  /// The ID of the Alibaba Cloud account.
  final pulumi.Input<String> accountId;

  /// The compliance package ID.
  final pulumi.Input<String> compliancePackId;

  /// The information about the compliance evaluations based on the rule.
  final pulumi.Input<List<GetRulesRuleCompliance>> compliances;

  /// The ARN of the Config Rule.
  final pulumi.Input<String> configRuleArn;

  /// The ID of the Config Rule.
  final pulumi.Input<String> configRuleId;

  /// Field `config_rule_state` has been deprecated from provider version 1.124.1. New field `status` instead.
  final pulumi.Input<String> configRuleState;

  /// (Available since v1.124.1) A list of trigger types of config rule.
  final pulumi.Input<String> configRuleTriggerTypes;

  /// The description of the Config Rule.
  final pulumi.Input<String> description;

  /// Event source of the Config Rule.
  final pulumi.Input<String> eventSource;

  /// (Available since v1.124.1) The scope of exclude of resource ids.
  final pulumi.Input<String> excludeResourceIdsScope;

  /// The ID of the Config Rule.
  final pulumi.Input<String> id;

  /// The input parameters of the Config Rule.
  final pulumi.Input<Map<String, String>> inputParameters;

  /// (Available since v1.124.1) The frequency of maximum execution.
  final pulumi.Input<String> maximumExecutionFrequency;

  /// the timestamp of the Config Rule modified.
  final pulumi.Input<String> modifiedTimestamp;

  /// (Available since v1.124.1) The scope of region ids.
  final pulumi.Input<String> regionIdsScope;

  /// (Available since v1.124.1) The scope of resource group ids.
  final pulumi.Input<String> resourceGroupIdsScope;

  /// (Available since v1.124.1) The scope of resource types.
  final pulumi.Input<List<String>> resourceTypesScopes;

  /// The risk level of Config Rule. Valid values: `1`: Critical ,`2`: Warning , `3`: Info.
  final pulumi.Input<int> riskLevel;

  /// The name of config rule.
  final pulumi.Input<String> ruleName;

  /// The types of the resources to be evaluated against the rule.
  final pulumi.Input<List<String>> scopeComplianceResourceTypes;

  /// Rule trigger mechanism.
  final pulumi.Input<String> sourceDetailMessageType;

  /// The identifier of the managed rule or the arn of the custom function.
  final pulumi.Input<String> sourceIdentifier;

  /// Rule execution cycle.
  final pulumi.Input<String> sourceMaximumExecutionFrequency;

  /// The source owner of the Config Rule.
  final pulumi.Input<String> sourceOwner;

  /// The status of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  final pulumi.Input<String> status;

  /// (Available since v1.124.1) The scope of tag key.
  final pulumi.Input<String> tagKeyScope;

  /// (Available since v1.124.1) The scope of tag value.
  final pulumi.Input<String> tagValueScope;

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
      'compliances':
          pulumi.Input.mapInputValue<
            List<GetRulesRuleCompliance>,
            List<Map<String, dynamic>>
          >(
            compliances,
            (value) =>
                pulumi.Input.encodeList<
                  GetRulesRuleCompliance,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      compliancePackId: pulumi.Input.fromValue(
        map['compliancePackId'] as String,
      ),
      compliances: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetRulesRuleCompliance>(
          map['compliances']!,
          (value) => GetRulesRuleCompliance.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      configRuleArn: pulumi.Input.fromValue(map['configRuleArn'] as String),
      configRuleId: pulumi.Input.fromValue(map['configRuleId'] as String),
      configRuleState: pulumi.Input.fromValue(map['configRuleState'] as String),
      configRuleTriggerTypes: pulumi.Input.fromValue(
        map['configRuleTriggerTypes'] as String,
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      eventSource: pulumi.Input.fromValue(map['eventSource'] as String),
      excludeResourceIdsScope: pulumi.Input.fromValue(
        map['excludeResourceIdsScope'] as String,
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      inputParameters: pulumi.Input.fromValue(
        (map['inputParameters'] as Map).cast<String, String>(),
      ),
      maximumExecutionFrequency: pulumi.Input.fromValue(
        map['maximumExecutionFrequency'] as String,
      ),
      modifiedTimestamp: pulumi.Input.fromValue(
        map['modifiedTimestamp'] as String,
      ),
      regionIdsScope: pulumi.Input.fromValue(map['regionIdsScope'] as String),
      resourceGroupIdsScope: pulumi.Input.fromValue(
        map['resourceGroupIdsScope'] as String,
      ),
      resourceTypesScopes: pulumi.Input.fromValue(
        (map['resourceTypesScopes'] as List).cast<String>(),
      ),
      riskLevel: pulumi.Input.fromValue(map['riskLevel'] as int),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      scopeComplianceResourceTypes: pulumi.Input.fromValue(
        (map['scopeComplianceResourceTypes'] as List).cast<String>(),
      ),
      sourceDetailMessageType: pulumi.Input.fromValue(
        map['sourceDetailMessageType'] as String,
      ),
      sourceIdentifier: pulumi.Input.fromValue(
        map['sourceIdentifier'] as String,
      ),
      sourceMaximumExecutionFrequency: pulumi.Input.fromValue(
        map['sourceMaximumExecutionFrequency'] as String,
      ),
      sourceOwner: pulumi.Input.fromValue(map['sourceOwner'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tagKeyScope: pulumi.Input.fromValue(map['tagKeyScope'] as String),
      tagValueScope: pulumi.Input.fromValue(map['tagValueScope'] as String),
    );
  }
}
