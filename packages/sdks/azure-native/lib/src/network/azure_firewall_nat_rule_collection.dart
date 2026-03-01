// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_nat_rcaction.dart';
import 'azure_firewall_nat_rule.dart';

/// NAT rule collection resource.
class AzureFirewallNatRuleCollection {
  /// The action type of a NAT rule collection.
  final AzureFirewallNatRCAction? action;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  final String? name;
  /// Priority of the NAT rule collection resource.
  final int? priority;
  /// Collection of rules used by a NAT rule collection.
  final List<AzureFirewallNatRule>? rules;

  /// Creates a new [AzureFirewallNatRuleCollection].
  /// [action] The action type of a NAT rule collection.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  /// [priority] Priority of the NAT rule collection resource.
  /// [rules] Collection of rules used by a NAT rule collection.
  AzureFirewallNatRuleCollection({
    this.action,
    this.id,
    this.name,
    this.priority,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<AzureFirewallNatRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory AzureFirewallNatRuleCollection.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNatRuleCollection(
      action: map['action'] == null ? null : AzureFirewallNatRCAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<AzureFirewallNatRule>(map['rules'], (value) => AzureFirewallNatRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

