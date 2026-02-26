// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getResolverFirewallRules.
class GetResolverFirewallRulesArgs {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list.
  final Input<String>? action;

  /// The unique identifier of the firewall rule group that you want to retrieve the rules for.
  final Input<String> firewallRuleGroupId;

  /// The setting that determines the processing order of the rules in a rule group.
  final Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetResolverFirewallRulesArgs({
    this.action,
    required this.firewallRuleGroupId,
    this.priority,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    map['firewallRuleGroupId'] = firewallRuleGroupId;
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetResolverFirewallRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRulesArgs(
      action: Input.asOptionalInput<String>(map['action']),
      firewallRuleGroupId: Input.asInput<String>(map['firewallRuleGroupId']),
      priority: Input.asOptionalInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
