// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resolver_firewall_rules_firewall_rule.dart';

/// Result data returned by getResolverFirewallRules.
class GetResolverFirewallRulesResult {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.
  final String? action;
  /// The unique identifier of the firewall rule group.
  final String firewallRuleGroupId;
  /// List with information about the firewall rules. See details below.
  final List<GetResolverFirewallRulesFirewallRule> firewallRules;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The priority of the rule in the rule group.
  final int? priority;
  final String region;

  /// Creates a new [GetResolverFirewallRulesResult].
  /// [action] The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list, or a threat in a DNS Firewall Advanced rule.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [firewallRules] List with information about the firewall rules. See details below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [priority] The priority of the rule in the rule group.
  /// [region] Required.
  GetResolverFirewallRulesResult({
    this.action,
    required this.firewallRuleGroupId,
    required this.firewallRules,
    required this.id,
    this.priority,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'firewallRuleGroupId': firewallRuleGroupId,
      'firewallRules': pulumi.Input.encodeList<GetResolverFirewallRulesFirewallRule, Map<String, dynamic>>(firewallRules, (value) => value.toMap()),
      'id': id,
      'priority': ?priority,
      'region': region,
    };
  }

  factory GetResolverFirewallRulesResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRulesResult(
      action: map['action'] == null ? null : map['action'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      firewallRules: pulumi.Input.decodeList<GetResolverFirewallRulesFirewallRule>(map['firewallRules'], (value) => GetResolverFirewallRulesFirewallRule.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      region: map['region'] as String,
    );
  }
}

