// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_nat_rule_collection_rule.dart';

/// {@template pulumi_network_firewall_nat_rule_collection_firewall_nat_rule_collection_args_doc}
/// The set of arguments for FirewallNatRuleCollection.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_nat_rule_collection_firewall_nat_rule_collection_args_doc}
class FirewallNatRuleCollectionArgs {
  /// Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`.
  final pulumi.Input<String> action;
  /// Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> azureFirewallName;
  /// Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  final pulumi.Input<int> priority;
  /// Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// One or more `rule` blocks as defined below.
  final pulumi.Input<List<FirewallNatRuleCollectionRule>> rules;

  /// Creates a new [FirewallNatRuleCollectionArgs].
  /// [action] Specifies the action the rule will apply to matching traffic. Possible values are `Dnat` and `Snat`.
  /// [azureFirewallName] Specifies the name of the Firewall in which the NAT Rule Collection should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the NAT Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created.
  /// [priority] Specifies the priority of the rule collection. Possible values are between `100` - `65000`.
  /// [resourceGroupName] Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created.
  /// [rules] One or more `rule` blocks as defined below.
  FirewallNatRuleCollectionArgs({
    required String action,
    required String azureFirewallName,
    String? name,
    required int priority,
    required String resourceGroupName,
    required List<FirewallNatRuleCollectionRule> rules,
  }) :
      action = pulumi.Input.asInput<String>(action),
      azureFirewallName = pulumi.Input.asInput<String>(azureFirewallName),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asInput<int>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rules = pulumi.Input.asInput<List<FirewallNatRuleCollectionRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'azureFirewallName': azureFirewallName,
      'name': ?name,
      'priority': priority,
      'resourceGroupName': resourceGroupName,
      'rules': pulumi.Input.mapInputValue<List<FirewallNatRuleCollectionRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallNatRuleCollectionRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallNatRuleCollectionArgs.fromMap(Map<String, dynamic> map) {
    return FirewallNatRuleCollectionArgs(
      action: map['action'] as String,
      azureFirewallName: map['azureFirewallName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      rules: pulumi.Input.decodeList<FirewallNatRuleCollectionRule>(map['rules'], (value) => FirewallNatRuleCollectionRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

