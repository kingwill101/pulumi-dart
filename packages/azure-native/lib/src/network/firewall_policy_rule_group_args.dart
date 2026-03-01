// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule.dart';

/// {@template pulumi_network_firewall_policy_rule_group_args_doc}
/// The set of arguments for FirewallPolicyRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_network_firewall_policy_rule_group_args_doc}
class FirewallPolicyRuleGroupArgs {
  /// The name of the Firewall Policy.
  final pulumi.Input<String> firewallPolicyName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Priority of the Firewall Policy Rule Group resource.
  final pulumi.Input<int>? priority;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the FirewallPolicyRuleGroup.
  final pulumi.Input<String>? ruleGroupName;
  /// Group of Firewall Policy rules.
  final pulumi.Input<List<FirewallPolicyFilterRule>>? rules;

  /// Creates a new [FirewallPolicyRuleGroupArgs].
  /// [firewallPolicyName] The name of the Firewall Policy.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Group resource.
  /// [resourceGroupName] The name of the resource group.
  /// [ruleGroupName] The name of the FirewallPolicyRuleGroup.
  /// [rules] Group of Firewall Policy rules.
  FirewallPolicyRuleGroupArgs({
    required String firewallPolicyName,
    String? id,
    String? name,
    int? priority,
    required String resourceGroupName,
    String? ruleGroupName,
    List<FirewallPolicyFilterRule>? rules,
  }) :
      firewallPolicyName = pulumi.Input.asInput<String>(firewallPolicyName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleGroupName = pulumi.Input.asOptionalInput<String>(ruleGroupName),
      rules = pulumi.Input.asOptionalInput<List<FirewallPolicyFilterRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallPolicyName': firewallPolicyName,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': resourceGroupName,
      'ruleGroupName': ?ruleGroupName,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<FirewallPolicyFilterRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<FirewallPolicyFilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FirewallPolicyRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleGroupArgs(
      firewallPolicyName: map['firewallPolicyName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleGroupName: map['ruleGroupName'] == null ? null : map['ruleGroupName'] as String,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<FirewallPolicyFilterRule>(map['rules'], (value) => FirewallPolicyFilterRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

