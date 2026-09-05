// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_security_group_ingress_rule_security_group_ingress_rule_args_doc}
/// The set of arguments for SecurityGroupIngressRule.
/// {@endtemplate}
/// {@macro pulumi_vpc_security_group_ingress_rule_security_group_ingress_rule_args_doc}
class SecurityGroupIngressRuleArgs {
  /// The source IPv4 CIDR range.
  final pulumi.Input<String?>? cidrIpv4;
  /// The source IPv6 CIDR range.
  final pulumi.Input<String?>? cidrIpv6;
  /// The security group rule description.
  final pulumi.Input<String?>? description;
  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final pulumi.Input<int?>? fromPort;
  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ipProtocol` is set to `-1`, it translates to all protocols, all port ranges, and `fromPort` and `toPort` values should not be defined.
  final pulumi.Input<String> ipProtocol;
  /// The ID of the source prefix list.
  final pulumi.Input<String?>? prefixListId;
  /// The source security group that is referenced in the rule.
  final pulumi.Input<String?>? referencedSecurityGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the security group.
  final pulumi.Input<String> securityGroupId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// &gt; **Note** Although `cidrIpv4`, `cidrIpv6`, `prefixListId`, and `referencedSecurityGroupId` are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The `fromPort` and `toPort` arguments are required unless `ipProtocol` is set to `-1` or `icmpv6`.
  final pulumi.Input<int?>? toPort;

  /// Creates a new [SecurityGroupIngressRuleArgs].
  /// [cidrIpv4] The source IPv4 CIDR range.
  /// [cidrIpv6] The source IPv6 CIDR range.
  /// [description] The security group rule description.
  /// [fromPort] The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  /// [ipProtocol] The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ipProtocol` is set to `-1`, it translates to all protocols, all port ranges, and `fromPort` and `toPort` values should not be defined.
  /// [prefixListId] The ID of the source prefix list.
  /// [referencedSecurityGroupId] The source security group that is referenced in the rule.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupId] The ID of the security group.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [toPort] The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  const SecurityGroupIngressRuleArgs({
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
      cidrIpv4: (() { final guardedValue = map['cidrIpv4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cidrIpv6: (() { final guardedValue = map['cidrIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referencedSecurityGroupId: (() { final guardedValue = map['referencedSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: pulumi.Input.fromValue(map['securityGroupId'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
