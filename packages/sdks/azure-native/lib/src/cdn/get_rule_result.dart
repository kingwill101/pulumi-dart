// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getRule.
class GetRuleResult {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  final List<dynamic>? actions;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A list of conditions that must be matched for the actions to be executed
  final List<dynamic>? conditions;
  final String? deploymentStatus;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  final String? matchProcessingBehavior;
  /// The name of the resource
  final String? name;
  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  final int? order;
  /// Provisioning status
  final String? provisioningState;
  /// The name of the rule set containing the rule.
  final String? ruleSetName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetRuleResult].
  /// [actions] A list of actions that are executed when all the conditions of a rule are satisfied.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [conditions] A list of conditions that must be matched for the actions to be executed
  /// [deploymentStatus] Optional.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [matchProcessingBehavior] If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  /// [name] The name of the resource
  /// [order] The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  /// [provisioningState] Provisioning status
  /// [ruleSetName] The name of the rule set containing the rule.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetRuleResult({
    this.actions,
    this.azureApiVersion,
    this.conditions,
    this.deploymentStatus,
    this.id,
    String? matchProcessingBehavior,
    this.name,
    this.order,
    this.provisioningState,
    this.ruleSetName,
    this.systemData,
    this.type,
  }) : matchProcessingBehavior = matchProcessingBehavior ?? 'Continue';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'azureApiVersion': ?azureApiVersion,
      'conditions': ?conditions,
      'deploymentStatus': ?deploymentStatus,
      'id': ?id,
      'matchProcessingBehavior': ?matchProcessingBehavior,
      'name': ?name,
      'order': ?order,
      'provisioningState': ?provisioningState,
      'ruleSetName': ?ruleSetName,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRuleResult(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
      deploymentStatus: (() { final guardedValue = map['deploymentStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      matchProcessingBehavior: (() { final guardedValue = map['matchProcessingBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ruleSetName: (() { final guardedValue = map['ruleSetName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
