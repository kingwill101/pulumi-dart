// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_cache_expiration_action_response.dart';
import 'delivery_rule_client_port_condition_response.dart';
import 'system_data_response.dart';

/// Result data returned by getRule.
class GetRuleResult {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  final List<DeliveryRuleCacheExpirationActionResponse>? actions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A list of conditions that must be matched for the actions to be executed
  final List<DeliveryRuleClientPortConditionResponse>? conditions;
  final String deploymentStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  final String? matchProcessingBehavior;
  /// The name of the resource
  final String name;
  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  final int? order;
  /// Provisioning status
  final String provisioningState;
  /// The name of the rule set containing the rule.
  final String ruleSetName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetRuleResult].
  /// [actions] A list of actions that are executed when all the conditions of a rule are satisfied.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conditions] A list of conditions that must be matched for the actions to be executed
  /// [deploymentStatus] Required.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [matchProcessingBehavior] If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  /// [name] The name of the resource
  /// [order] The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  /// [provisioningState] Provisioning status
  /// [ruleSetName] The name of the rule set containing the rule.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetRuleResult({
    this.actions,
    required this.azureApiVersion,
    this.conditions,
    required this.deploymentStatus,
    required this.id,
    this.matchProcessingBehavior,
    required this.name,
    this.order,
    required this.provisioningState,
    required this.ruleSetName,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?(() { final guardedValue = actions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeliveryRuleCacheExpirationActionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': azureApiVersion,
      'conditions': ?(() { final guardedValue = conditions; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeliveryRuleClientPortConditionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deploymentStatus': deploymentStatus,
      'id': id,
      'matchProcessingBehavior': ?matchProcessingBehavior,
      'name': name,
      'order': ?order,
      'provisioningState': provisioningState,
      'ruleSetName': ruleSetName,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeliveryRuleCacheExpirationActionResponse>(guardedValue, (value) => DeliveryRuleCacheExpirationActionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeliveryRuleClientPortConditionResponse>(guardedValue, (value) => DeliveryRuleClientPortConditionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      deploymentStatus: map['deploymentStatus'] as String,
      id: map['id'] as String,
      matchProcessingBehavior: (() { final guardedValue = map['matchProcessingBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return guardedValue as int; })(),
      provisioningState: map['provisioningState'] as String,
      ruleSetName: map['ruleSetName'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
