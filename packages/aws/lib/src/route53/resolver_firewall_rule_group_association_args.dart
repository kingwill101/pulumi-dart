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
    required String firewallRuleGroupId,
    String? mutationProtection,
    String? name,
    required int priority,
    String? region,
    Map<String, String>? tags,
    required String vpcId,
  })  : firewallRuleGroupId = pulumi.Input.asInput<String>(firewallRuleGroupId),
        mutationProtection =
            pulumi.Input.asOptionalInput<String>(mutationProtection),
        name = pulumi.Input.asOptionalInput<String>(name),
        priority = pulumi.Input.asInput<int>(priority),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['firewallRuleGroupId'] = firewallRuleGroupId;
    final mutationProtectionValue = mutationProtection;
    if (mutationProtectionValue != null) {
      map['mutationProtection'] = mutationProtectionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['priority'] = priority;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory ResolverFirewallRuleGroupAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return ResolverFirewallRuleGroupAssociationArgs(
      firewallRuleGroupId: map['firewallRuleGroupId'] as String,
      mutationProtection: map['mutationProtection'] == null
          ? null
          : map['mutationProtection'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}
