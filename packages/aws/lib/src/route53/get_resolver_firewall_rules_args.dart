// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_firewall_rules_get_resolver_firewall_rules_args_doc}
/// Arguments for getResolverFirewallRules.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_firewall_rules_get_resolver_firewall_rules_args_doc}
class GetResolverFirewallRulesArgs {
  /// The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list.
  final pulumi.Input<String>? action;

  /// The unique identifier of the firewall rule group that you want to retrieve the rules for.
  final pulumi.Input<String> firewallRuleGroupId;

  /// The setting that determines the processing order of the rules in a rule group.
  final pulumi.Input<int>? priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetResolverFirewallRulesArgs].
  /// [action] The action that DNS Firewall should take on a DNS query when it matches one of the domains in the rule's domain list.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group that you want to retrieve the rules for.
  /// [priority] The setting that determines the processing order of the rules in a rule group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetResolverFirewallRulesArgs({
    String? action,
    required String firewallRuleGroupId,
    int? priority,
    String? region,
  }) : action = pulumi.Input.asOptionalInput<String>(action),
       firewallRuleGroupId = pulumi.Input.asInput<String>(firewallRuleGroupId),
       priority = pulumi.Input.asOptionalInput<int>(priority),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'firewallRuleGroupId': firewallRuleGroupId,
      'priority': ?priority,
      'region': ?region,
    };
  }

  factory GetResolverFirewallRulesArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRulesArgs(
      action: map['action'] == null ? null : map['action'] as String,
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
