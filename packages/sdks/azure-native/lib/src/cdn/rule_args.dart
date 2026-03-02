// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_rule_cache_expiration_action.dart';
import 'delivery_rule_client_port_condition.dart';

/// {@template pulumi_cdn_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_cdn_rule_args_doc}
class RuleArgs {
  /// A list of actions that are executed when all the conditions of a rule are satisfied.
  final pulumi.Input<List<DeliveryRuleCacheExpirationAction>>? actions;
  /// A list of conditions that must be matched for the actions to be executed
  final pulumi.Input<List<DeliveryRuleClientPortCondition>>? conditions;
  /// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  final pulumi.Input<String>? matchProcessingBehavior;
  /// The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  final pulumi.Input<int>? order;
  /// Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  final pulumi.Input<String> profileName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the delivery rule which is unique within the endpoint.
  final pulumi.Input<String>? ruleName;
  /// Name of the rule set under the profile which is unique globally.
  final pulumi.Input<String> ruleSetName;

  /// Creates a new [RuleArgs].
  /// [actions] A list of actions that are executed when all the conditions of a rule are satisfied.
  /// [conditions] A list of conditions that must be matched for the actions to be executed
  /// [matchProcessingBehavior] If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
  /// [order] The order in which the rules are applied for the endpoint. Possible values {0,1,2,3,………}. A rule with a lesser order will be applied before a rule with a greater order. Rule with order 0 is a special rule. It does not require any condition and actions listed in it will always be applied.
  /// [profileName] Name of the Azure Front Door Standard or Azure Front Door Premium or CDN profile which is unique within the resource group.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] Name of the delivery rule which is unique within the endpoint.
  /// [ruleSetName] Name of the rule set under the profile which is unique globally.
  RuleArgs({
    this.actions,
    this.conditions,
    this.matchProcessingBehavior,
    this.order,
    required this.profileName,
    required this.resourceGroupName,
    this.ruleName,
    required this.ruleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryRuleCacheExpirationAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<DeliveryRuleCacheExpirationAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<DeliveryRuleClientPortCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<DeliveryRuleClientPortCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'matchProcessingBehavior': ?matchProcessingBehavior,
      'order': ?order,
      'profileName': profileName,
      'resourceGroupName': resourceGroupName,
      'ruleName': ?ruleName,
      'ruleSetName': ruleSetName,
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      actions: map['actions'] == null ? null : (pulumi.Input.decodeList<DeliveryRuleCacheExpirationAction>(map['actions']!, (value) => DeliveryRuleCacheExpirationAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      conditions: map['conditions'] == null ? null : (pulumi.Input.decodeList<DeliveryRuleClientPortCondition>(map['conditions']!, (value) => DeliveryRuleClientPortCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      matchProcessingBehavior: map['matchProcessingBehavior'] == null ? null : (map['matchProcessingBehavior']! as String).input(),
      order: map['order'] == null ? null : (map['order']! as int).input(),
      profileName: (map['profileName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName']! as String).input(),
      ruleSetName: (map['ruleSetName'] as String).input(),
    );
  }
}

