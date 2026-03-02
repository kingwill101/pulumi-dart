// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_security_group_ingress_rule_security_group_ingress_rule_args_doc}
/// The set of arguments for SecurityGroupIngressRule.
/// {@endtemplate}
/// {@macro pulumi_vpc_security_group_ingress_rule_security_group_ingress_rule_args_doc}
class SecurityGroupIngressRuleArgs {
  /// The source IPv4 CIDR range.
  final pulumi.Input<String>? cidrIpv4;
  /// The source IPv6 CIDR range.
  final pulumi.Input<String>? cidrIpv6;
  /// The security group rule description.
  final pulumi.Input<String>? description;
  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final pulumi.Input<int>? fromPort;
  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  final pulumi.Input<String> ipProtocol;
  /// The ID of the source prefix list.
  final pulumi.Input<String>? prefixListId;
  /// The source security group that is referenced in the rule.
  final pulumi.Input<String>? referencedSecurityGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// > **Note** Although `cidr_ipv4`, `cidr_ipv6`, `prefix_list_id`, and `referenced_security_group_id` are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The `from_port` and `to_port` arguments are required unless `ip_protocol` is set to `-1` or `icmpv6`.
  final pulumi.Input<int>? toPort;

  /// Creates a new [SecurityGroupIngressRuleArgs].
  /// [cidrIpv4] The source IPv4 CIDR range.
  /// [cidrIpv6] The source IPv6 CIDR range.
  /// [description] The security group rule description.
  /// [fromPort] The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  /// [ipProtocol] The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  /// [prefixListId] The ID of the source prefix list.
  /// [referencedSecurityGroupId] The source security group that is referenced in the rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [toPort] The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  SecurityGroupIngressRuleArgs({
    this.cidrIpv4,
    this.cidrIpv6,
    this.description,
    this.fromPort,
    required this.ipProtocol,
    this.prefixListId,
    this.referencedSecurityGroupId,
    this.region,
    required this.securityGroupId,
    this.tags,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIpv4': ?cidrIpv4,
      'cidrIpv6': ?cidrIpv6,
      'description': ?description,
      'fromPort': ?fromPort,
      'ipProtocol': ipProtocol,
      'prefixListId': ?prefixListId,
      'referencedSecurityGroupId': ?referencedSecurityGroupId,
      'region': ?region,
      'securityGroupId': securityGroupId,
      'tags': ?tags,
      'toPort': ?toPort,
    };
  }

  factory SecurityGroupIngressRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupIngressRuleArgs(
      cidrIpv4: map['cidrIpv4'] == null ? null : (map['cidrIpv4'] as String).input(),
      cidrIpv6: map['cidrIpv6'] == null ? null : (map['cidrIpv6'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      fromPort: map['fromPort'] == null ? null : (map['fromPort'] as int).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      prefixListId: map['prefixListId'] == null ? null : (map['prefixListId'] as String).input(),
      referencedSecurityGroupId: map['referencedSecurityGroupId'] == null ? null : (map['referencedSecurityGroupId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityGroupId: (map['securityGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      toPort: map['toPort'] == null ? null : (map['toPort'] as int).input(),
    );
  }
}

