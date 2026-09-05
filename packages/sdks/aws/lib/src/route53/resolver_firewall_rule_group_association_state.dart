// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverFirewallRuleGroupAssociation resources.
class ResolverFirewallRuleGroupAssociationState {
  /// ARN of the firewall rule group association.
  final pulumi.Input<String?>? arn;
  /// The unique identifier of the firewall rule group.
  final pulumi.Input<String?>? firewallRuleGroupId;
  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String?>? mutationProtection;
  /// A name that lets you identify the rule group association, to manage and use it.
  final pulumi.Input<String?>? name;
  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  final pulumi.Input<int?>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The unique identifier of the VPC that you want to associate with the rule group.
  final pulumi.Input<String?>? vpcId;

  /// Creates a new [ResolverFirewallRuleGroupAssociationState].
  /// [arn] ARN of the firewall rule group association.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [mutationProtection] If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  /// [name] A name that lets you identify the rule group association, to manage and use it.
  /// [priority] The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [vpcId] The unique identifier of the VPC that you want to associate with the rule group.
  const ResolverFirewallRuleGroupAssociationState({
    this.arn,
    this.firewallRuleGroupId,
    this.mutationProtection,
    this.name,
    this.priority,
    this.region,
    this.tags,
    this.tagsAll,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'firewallRuleGroupId': ?firewallRuleGroupId,
      'mutationProtection': ?mutationProtection,
      'name': ?name,
      'priority': ?priority,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcId': ?vpcId,
    };
  }

  factory ResolverFirewallRuleGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return ResolverFirewallRuleGroupAssociationState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firewallRuleGroupId: (() { final guardedValue = map['firewallRuleGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mutationProtection: (() { final guardedValue = map['mutationProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
