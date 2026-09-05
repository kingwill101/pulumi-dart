// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_firewall_rules_firewall_rule.dart';

/// Result data returned by getResolverFirewallRules.
class GetResolverFirewallRulesResult {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.
  final String? action;
  /// The unique identifier of the firewall rule group.
  final String? firewallRuleGroupId;
  /// List with information about the firewall rules. See details below.
  final List<GetResolverFirewallRulesFirewallRule>? firewallRules;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The priority of the rule in the rule group.
  final int? priority;
  final String? region;

  /// Creates a new [GetResolverFirewallRulesResult].
  /// [action] The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [firewallRules] List with information about the firewall rules. See details below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [priority] The priority of the rule in the rule group.
  /// [region] Optional.
  const GetResolverFirewallRulesResult({
    this.action,
    this.firewallRuleGroupId,
    this.firewallRules,
    this.id,
    this.priority,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'firewallRuleGroupId': ?firewallRuleGroupId,
      'firewallRules': ?(() { final guardedValue = firewallRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetResolverFirewallRulesFirewallRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'priority': ?priority,
      'region': ?region,
    };
  }

  factory GetResolverFirewallRulesResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRulesResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRuleGroupId: (() { final guardedValue = map['firewallRuleGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRules: (() { final guardedValue = map['firewallRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetResolverFirewallRulesFirewallRule>(guardedValue, (value) => GetResolverFirewallRulesFirewallRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
