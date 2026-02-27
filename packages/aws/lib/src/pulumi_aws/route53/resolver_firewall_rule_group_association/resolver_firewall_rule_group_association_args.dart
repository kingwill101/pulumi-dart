// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ResolverFirewallRuleGroupAssociation.
class ResolverFirewallRuleGroupAssociationArgs {
  /// The unique identifier of the firewall rule group.
  final Input<String> firewallRuleGroupId;

  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  final Input<String>? mutationProtection;

  /// A name that lets you identify the rule group association, to manage and use it.
  final Input<String>? name;

  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  final Input<int> priority;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The unique identifier of the VPC that you want to associate with the rule group.
  final Input<String> vpcId;

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
      firewallRuleGroupId: Input.asInput<String>(map['firewallRuleGroupId']),
      mutationProtection:
          Input.asOptionalInput<String>(map['mutationProtection']),
      name: Input.asOptionalInput<String>(map['name']),
      priority: Input.asInput<int>(map['priority']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
