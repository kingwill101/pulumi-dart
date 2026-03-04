// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_firewall_network_rule.dart';
import 'azure_firewall_rcaction.dart';

/// Network rule collection resource.
class AzureFirewallNetworkRuleCollection {
  /// The action type of a rule collection.
  final pulumi.Input<AzureFirewallRCAction>? action;

  /// Resource ID.
  final pulumi.Input<String>? id;

  /// The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Priority of the network rule collection resource.
  final pulumi.Input<int>? priority;

  /// Collection of rules used by a network rule collection.
  final pulumi.Input<List<AzureFirewallNetworkRule>>? rules;

  /// Creates a new [AzureFirewallNetworkRuleCollection].
  /// [action] The action type of a rule collection.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within the Azure firewall. This name can be used to access the resource.
  /// [priority] Priority of the network rule collection resource.
  /// [rules] Collection of rules used by a network rule collection.
  AzureFirewallNetworkRuleCollection({
    this.action,
    this.id,
    this.name,
    this.priority,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action':
          ?pulumi.Input.mapOptionalInputValue<
            AzureFirewallRCAction,
            Map<String, dynamic>
          >(action, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'rules':
          ?pulumi.Input.mapOptionalInputValue<
            List<AzureFirewallNetworkRule>,
            List<Map<String, dynamic>>
          >(
            rules,
            (value) =>
                pulumi.Input.encodeList<
                  AzureFirewallNetworkRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AzureFirewallNetworkRuleCollection.fromMap(Map<String, dynamic> map) {
    return AzureFirewallNetworkRuleCollection(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureFirewallRCAction.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AzureFirewallNetworkRule>(
            guardedValue,
            (value) => AzureFirewallNetworkRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
