// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aggregate_config_rules_rule_compliance.dart';

class GetAggregateConfigRulesRule {
  /// The Aliyun User ID.
  final String accountId;
  /// The config rule name.
  final String aggregateConfigRuleName;
  /// The ID of aggregator.
  final String aggregatorId;
  /// The ID of Compliance Package.
  final String compliancePackId;
  /// The Compliance information.
  final List<GetAggregateConfigRulesRuleCompliance> compliances;
  /// The config rule arn.
  final String configRuleArn;
  /// The ID of the rule.
  final String configRuleId;
  /// The trigger types of config rules.
  final String configRuleTriggerTypes;
  /// The description of the rule.
  final String description;
  /// Event source of the Config Rule.
  final String eventSource;
  /// The id of the resources to be evaluated against the rule.
  final String excludeResourceIdsScope;
  /// The ID of the Aggregate Config Rule.
  final String id;
  /// The settings of the input parameters for the rule.
  final Map<String, String> inputParameters;
  /// The frequency of the compliance evaluations.
  final String maximumExecutionFrequency;
  /// The timestamp when the rule was last modified.
  final String modifiedTimestamp;
  /// The scope of resource region ids.
  final String regionIdsScope;
  /// The scope of resource group ids.
  final String resourceGroupIdsScope;
  /// The types of resources evaluated by the rule.
  final List<String> resourceTypesScopes;
  /// The Risk Level. Valid values `1`: critical, `2`: warning, `3`: info.
  final int riskLevel;
  /// The identifier of the managed rule or the arn of the custom function.
  final String sourceIdentifier;
  /// The source owner of the Config Rule.
  final String sourceOwner;
  /// The state of the config rule, valid values: `ACTIVE`, `DELETING`, `EVALUATING` and `INACTIVE`.
  final String status;
  /// The scope of tay key.
  final String tagKeyScope;
  /// The scope of tay value.
  final String tagValueScope;

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
      'compliances': pulumi.Input.encodeList<GetAggregateConfigRulesRuleCompliance, Map<String, dynamic>>(compliances, (value) => value.toMap()),
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
      accountId: map['accountId'] as String,
      aggregateConfigRuleName: map['aggregateConfigRuleName'] as String,
      aggregatorId: map['aggregatorId'] as String,
      compliancePackId: map['compliancePackId'] as String,
      compliances: pulumi.Input.decodeList<GetAggregateConfigRulesRuleCompliance>(map['compliances'], (value) => GetAggregateConfigRulesRuleCompliance.fromMap((value as Map).cast<String, dynamic>())),
      configRuleArn: map['configRuleArn'] as String,
      configRuleId: map['configRuleId'] as String,
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
      sourceIdentifier: map['sourceIdentifier'] as String,
      sourceOwner: map['sourceOwner'] as String,
      status: map['status'] as String,
      tagKeyScope: map['tagKeyScope'] as String,
      tagValueScope: map['tagValueScope'] as String,
    );
  }
}

