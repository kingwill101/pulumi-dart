// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SecurityGroupEgressRule resources.
class SecurityGroupEgressRuleState {
  /// The Amazon Resource Name (ARN) of the security group rule.
  final pulumi.Input<String>? arn;
  /// The destination IPv4 CIDR range.
  final pulumi.Input<String>? cidrIpv4;
  /// The destination IPv6 CIDR range.
  final pulumi.Input<String>? cidrIpv6;
  /// The security group rule description.
  final pulumi.Input<String>? description;
  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final pulumi.Input<int>? fromPort;
  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  final pulumi.Input<String>? ipProtocol;
  /// The ID of the destination prefix list.
  final pulumi.Input<String>? prefixListId;
  /// The destination security group that is referenced in the rule.
  final pulumi.Input<String>? referencedSecurityGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the security group.
  final pulumi.Input<String>? securityGroupId;
  /// The ID of the security group rule.
  final pulumi.Input<String>? securityGroupRuleId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// > **Note** Although `cidr_ipv4`, `cidr_ipv6`, `prefix_list_id`, and `referenced_security_group_id` are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The `from_port` and `to_port` arguments are required unless `ip_protocol` is set to `-1` or `icmpv6`.
  final pulumi.Input<int>? toPort;

  /// Creates a new [SecurityGroupEgressRuleState].
  /// [arn] The Amazon Resource Name (ARN) of the security group rule.
  /// [cidrIpv4] The destination IPv4 CIDR range.
  /// [cidrIpv6] The destination IPv6 CIDR range.
  /// [description] The security group rule description.
  /// [fromPort] The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  /// [ipProtocol] The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  /// [prefixListId] The ID of the destination prefix list.
  /// [referencedSecurityGroupId] The destination security group that is referenced in the rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  /// [securityGroupRuleId] The ID of the security group rule.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [toPort] The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  SecurityGroupEgressRuleState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cidrIpv4,
    pulumi.Output<String>? cidrIpv6,
    pulumi.Output<String>? description,
    pulumi.Output<int>? fromPort,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? prefixListId,
    pulumi.Output<String>? referencedSecurityGroupId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<String>? securityGroupRuleId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<int>? toPort,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cidrIpv4 = pulumi.Input.asOptionalInput<String>(cidrIpv4),
      cidrIpv6 = pulumi.Input.asOptionalInput<String>(cidrIpv6),
      description = pulumi.Input.asOptionalInput<String>(description),
      fromPort = pulumi.Input.asOptionalInput<int>(fromPort),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      prefixListId = pulumi.Input.asOptionalInput<String>(prefixListId),
      referencedSecurityGroupId = pulumi.Input.asOptionalInput<String>(referencedSecurityGroupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityGroupRuleId = pulumi.Input.asOptionalInput<String>(securityGroupRuleId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      toPort = pulumi.Input.asOptionalInput<int>(toPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cidrIpv4': ?cidrIpv4,
      'cidrIpv6': ?cidrIpv6,
      'description': ?description,
      'fromPort': ?fromPort,
      'ipProtocol': ?ipProtocol,
      'prefixListId': ?prefixListId,
      'referencedSecurityGroupId': ?referencedSecurityGroupId,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'securityGroupRuleId': ?securityGroupRuleId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'toPort': ?toPort,
    };
  }

  factory SecurityGroupEgressRuleState.fromMap(Map<String, dynamic> map) {
    return SecurityGroupEgressRuleState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cidrIpv4: map['cidrIpv4'] == null ? null : pulumi.Output.create<String>(map['cidrIpv4'] as String),
      cidrIpv6: map['cidrIpv6'] == null ? null : pulumi.Output.create<String>(map['cidrIpv6'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      fromPort: map['fromPort'] == null ? null : pulumi.Output.create<int>(map['fromPort'] as int),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      prefixListId: map['prefixListId'] == null ? null : pulumi.Output.create<String>(map['prefixListId'] as String),
      referencedSecurityGroupId: map['referencedSecurityGroupId'] == null ? null : pulumi.Output.create<String>(map['referencedSecurityGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      securityGroupRuleId: map['securityGroupRuleId'] == null ? null : pulumi.Output.create<String>(map['securityGroupRuleId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      toPort: map['toPort'] == null ? null : pulumi.Output.create<int>(map['toPort'] as int),
    );
  }
}

