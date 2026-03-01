// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_get_resolver_firewall_rule_group_get_resolver_firewall_rule_group_args_doc}
/// Arguments for getResolverFirewallRuleGroup.
/// {@endtemplate}
/// {@macro pulumi_route53_get_resolver_firewall_rule_group_get_resolver_firewall_rule_group_args_doc}
class GetResolverFirewallRuleGroupArgs {
  /// The ID of the rule group.
  final pulumi.Input<String> firewallRuleGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetResolverFirewallRuleGroupArgs].
  /// [firewallRuleGroupId] The ID of the rule group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetResolverFirewallRuleGroupArgs({
    required pulumi.Output<String> firewallRuleGroupId,
    pulumi.Output<String>? region,
  }) :
      firewallRuleGroupId = pulumi.Input.asInput<String>(firewallRuleGroupId),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleGroupId': firewallRuleGroupId,
      'region': ?region,
    };
  }

  factory GetResolverFirewallRuleGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetResolverFirewallRuleGroupArgs(
      firewallRuleGroupId: pulumi.Output.create<String>(map['firewallRuleGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

