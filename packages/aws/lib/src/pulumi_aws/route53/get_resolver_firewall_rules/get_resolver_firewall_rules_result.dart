// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_resolver_firewall_rules_firewall_rule/get_resolver_firewall_rules_firewall_rule.dart';

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

  GetResolverFirewallRulesResult({
    this.action,
    required this.firewallRuleGroupId,
    required this.firewallRules,
    required this.id,
    this.priority,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    map['firewallRuleGroupId'] = firewallRuleGroupId;
    map['firewallRules'] = Input.encodeList<
        GetResolverFirewallRulesFirewallRule,
        Map<String, dynamic>>(firewallRules, (value) => value.toMap());
    map['id'] = id;
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetResolverFirewallRulesResult.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRulesResult(
      action: map['action'] == null ? null : map['action'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      firewallRules: Input.decodeList<GetResolverFirewallRulesFirewallRule>(
          map['firewallRules'],
          (value) => GetResolverFirewallRulesFirewallRule.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      region: map['region'] as String,
    );
  }
}
