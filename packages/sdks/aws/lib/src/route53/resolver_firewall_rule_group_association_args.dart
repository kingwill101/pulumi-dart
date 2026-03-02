// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_resolver_firewall_rule_group_association_resolver_firewall_rule_group_association_args_doc}
/// The set of arguments for ResolverFirewallRuleGroupAssociation.
/// {@endtemplate}
/// {@macro pulumi_route53_resolver_firewall_rule_group_association_resolver_firewall_rule_group_association_args_doc}
class ResolverFirewallRuleGroupAssociationArgs {
  /// The unique identifier of the firewall rule group.
  final pulumi.Input<String> firewallRuleGroupId;
  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? mutationProtection;
  /// A name that lets you identify the rule group association, to manage and use it.
  final pulumi.Input<String>? name;
  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  final pulumi.Input<int> priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The unique identifier of the VPC that you want to associate with the rule group.
  final pulumi.Input<String> vpcId;

  /// Creates a new [ResolverFirewallRuleGroupAssociationArgs].
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [mutationProtection] If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  /// [name] A name that lets you identify the rule group association, to manage and use it.
  /// [priority] The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] The unique identifier of the VPC that you want to associate with the rule group.
  ResolverFirewallRuleGroupAssociationArgs({
    required this.firewallRuleGroupId,
    this.mutationProtection,
    this.name,
    required this.priority,
    this.region,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleGroupId': firewallRuleGroupId,
      'mutationProtection': ?mutationProtection,
      'name': ?name,
      'priority': priority,
      'region': ?region,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory ResolverFirewallRuleGroupAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallRuleGroupAssociationArgs(
      firewallRuleGroupId: (map['firewallRuleGroupId'] as String).input(),
      mutationProtection: map['mutationProtection'] == null ? null : (map['mutationProtection'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
    );
  }
}

