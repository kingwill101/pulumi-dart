// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResolverFirewallRuleGroupAssociation resources.
class ResolverFirewallRuleGroupAssociationState {
  /// The ARN (Amazon Resource Name) of the firewall rule group association.
  final pulumi.Input<String>? arn;
  /// The unique identifier of the firewall rule group.
  final pulumi.Input<String>? firewallRuleGroupId;
  /// If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? mutationProtection;
  /// A name that lets you identify the rule group association, to manage and use it.
  final pulumi.Input<String>? name;
  /// The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  final pulumi.Input<int>? priority;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The unique identifier of the VPC that you want to associate with the rule group.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ResolverFirewallRuleGroupAssociationState].
  /// [arn] The ARN (Amazon Resource Name) of the firewall rule group association.
  /// [firewallRuleGroupId] The unique identifier of the firewall rule group.
  /// [mutationProtection] If enabled, this setting disallows modification or removal of the association, to help prevent against accidentally altering DNS firewall protections. Valid values: `ENABLED`, `DISABLED`.
  /// [name] A name that lets you identify the rule group association, to manage and use it.
  /// [priority] The setting that determines the processing order of the rule group among the rule groups that you associate with the specified VPC. DNS Firewall filters VPC traffic starting from the rule group with the lowest numeric priority setting.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcId] The unique identifier of the VPC that you want to associate with the rule group.
  ResolverFirewallRuleGroupAssociationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? firewallRuleGroupId,
    pulumi.Output<String>? mutationProtection,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? vpcId,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      firewallRuleGroupId = pulumi.Input.asOptionalInput<String>(firewallRuleGroupId),
      mutationProtection = pulumi.Input.asOptionalInput<String>(mutationProtection),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      firewallRuleGroupId: map['firewallRuleGroupId'] == null ? null : pulumi.Output.create<String>(map['firewallRuleGroupId'] as String),
      mutationProtection: map['mutationProtection'] == null ? null : pulumi.Output.create<String>(map['mutationProtection'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

