// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_config_rules_rule_compliance.dart';

class GetAggregateConfigRulesRule {
  /// The Aliyun User ID.
  final pulumi.Input<String> accountId;
  /// The config rule name.
  final pulumi.Input<String> aggregateConfigRuleName;
  /// The ID of aggregator.
  final pulumi.Input<String> aggregatorId;
  /// The ID of Compliance Package.
  final pulumi.Input<String> compliancePackId;
  /// The Compliance information.
  final pulumi.Input<List<GetAggregateConfigRulesRuleCompliance>> compliances;
  /// The config rule arn.
  final pulumi.Input<String> configRuleArn;
  /// The ID of the rule.
  final pulumi.Input<String> configRuleId;
  /// The trigger types of config rules.
  final pulumi.Input<String> configRuleTriggerTypes;
  /// The description of the rule.
  final pulumi.Input<String> description;
  /// Event source of the Config Rule.
  final pulumi.Input<String> eventSource;
  /// The id of the resources to be evaluated against the rule.
  final pulumi.Input<String> excludeResourceIdsScope;
  /// The ID of the Aggregate Config Rule.
  final pulumi.Input<String> id;
  /// The settings of the input parameters for the rule.
  final pulumi.Input<Map<String, String>> inputParameters;
  /// The frequency of the compliance evaluations.
  final pulumi.Input<String> maximumExecutionFrequency;
  /// The timestamp when the rule was last modified.
  final pulumi.Input<String> modifiedTimestamp;
  /// The scope of resource region ids.
  final pulumi.Input<String> regionIdsScope;
  /// The scope of resource group ids.
  final pulumi.Input<String> resourceGroupIdsScope;
  /// The types of resources evaluated by the rule.
  final pulumi.Input<List<String>> resourceTypesScopes;
  /// The Risk Level. Valid values `1`: critical, `2`: warning, `3`: info.
  final pulumi.Input<int> riskLevel;
  /// The identifier of the managed rule or the arn of the custom function.
  final pulumi.Input<String> sourceIdentifier;
  /// The source owner of the Config Rule.
  final pulumi.Input<String> sourceOwner;
  /// The state of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  final pulumi.Input<String> status;
  /// The scope of tay key.
  final pulumi.Input<String> tagKeyScope;
  /// The scope of tay value.
  final pulumi.Input<String> tagValueScope;

  /// Creates a new [GetAggregateConfigRulesRule].
  /// [accountId] The Aliyun User ID.
  /// [aggregateConfigRuleName] The config rule name.
  /// [aggregatorId] The ID of aggregator.
  /// [compliancePackId] The ID of Compliance Package.
  /// [compliances] The Compliance information.
  /// [configRuleArn] The config rule arn.
  /// [configRuleId] The ID of the rule.
  /// [configRuleTriggerTypes] The trigger types of config rules.
  /// [description] The description of the rule.
  /// [eventSource] Event source of the Config Rule.
  /// [excludeResourceIdsScope] The id of the resources to be evaluated against the rule.
  /// [id] The ID of the Aggregate Config Rule.
  /// [inputParameters] The settings of the input parameters for the rule.
  /// [maximumExecutionFrequency] The frequency of the compliance evaluations.
  /// [modifiedTimestamp] The timestamp when the rule was last modified.
  /// [regionIdsScope] The scope of resource region ids.
  /// [resourceGroupIdsScope] The scope of resource group ids.
  /// [resourceTypesScopes] The types of resources evaluated by the rule.
  /// [riskLevel] The Risk Level. Valid values `1`: critical, `2`: warning, `3`: info.
  /// [sourceIdentifier] The identifier of the managed rule or the arn of the custom function.
  /// [sourceOwner] The source owner of the Config Rule.
  /// [status] The state of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  /// [tagKeyScope] The scope of tay key.
  /// [tagValueScope] The scope of tay value.
  GetAggregateConfigRulesRule({
    required this.accountId,
    required this.aggregateConfigRuleName,
    required this.aggregatorId,
    required this.compliancePackId,
    required this.compliances,
    required this.configRuleArn,
    required this.configRuleId,
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
    required this.sourceIdentifier,
    required this.sourceOwner,
    required this.status,
    required this.tagKeyScope,
    required this.tagValueScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'aggregateConfigRuleName': aggregateConfigRuleName,
      'aggregatorId': aggregatorId,
      'compliancePackId': compliancePackId,
      'compliances': pulumi.Input.mapInputValue<List<GetAggregateConfigRulesRuleCompliance>, List<Map<String, dynamic>>>(compliances, (value) => pulumi.Input.encodeList<GetAggregateConfigRulesRuleCompliance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configRuleArn': configRuleArn,
      'configRuleId': configRuleId,
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
      'sourceIdentifier': sourceIdentifier,
      'sourceOwner': sourceOwner,
      'status': status,
      'tagKeyScope': tagKeyScope,
      'tagValueScope': tagValueScope,
    };
  }

  factory GetAggregateConfigRulesRule.fromMap(Map<String, dynamic> map) {
    return GetAggregateConfigRulesRule(
      accountId: (map['accountId'] as String).input(),
      aggregateConfigRuleName: (map['aggregateConfigRuleName'] as String).input(),
      aggregatorId: (map['aggregatorId'] as String).input(),
      compliancePackId: (map['compliancePackId'] as String).input(),
      compliances: (pulumi.Input.decodeList<GetAggregateConfigRulesRuleCompliance>(map['compliances'], (value) => GetAggregateConfigRulesRuleCompliance.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configRuleArn: (map['configRuleArn'] as String).input(),
      configRuleId: (map['configRuleId'] as String).input(),
      configRuleTriggerTypes: (map['configRuleTriggerTypes'] as String).input(),
      description: (map['description'] as String).input(),
      eventSource: (map['eventSource'] as String).input(),
      excludeResourceIdsScope: (map['excludeResourceIdsScope'] as String).input(),
      id: (map['id'] as String).input(),
      inputParameters: ((map['inputParameters'] as Map).cast<String, String>()).input(),
      maximumExecutionFrequency: (map['maximumExecutionFrequency'] as String).input(),
      modifiedTimestamp: (map['modifiedTimestamp'] as String).input(),
      regionIdsScope: (map['regionIdsScope'] as String).input(),
      resourceGroupIdsScope: (map['resourceGroupIdsScope'] as String).input(),
      resourceTypesScopes: ((map['resourceTypesScopes'] as List).cast<String>()).input(),
      riskLevel: (map['riskLevel'] as int).input(),
      sourceIdentifier: (map['sourceIdentifier'] as String).input(),
      sourceOwner: (map['sourceOwner'] as String).input(),
      status: (map['status'] as String).input(),
      tagKeyScope: (map['tagKeyScope'] as String).input(),
      tagValueScope: (map['tagValueScope'] as String).input(),
    );
  }
}

