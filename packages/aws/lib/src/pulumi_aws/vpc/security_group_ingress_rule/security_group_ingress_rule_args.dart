// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SecurityGroupIngressRule.
class SecurityGroupIngressRuleArgs {
  /// The source IPv4 CIDR range.
  final Input<String>? cidrIpv4;

  /// The source IPv6 CIDR range.
  final Input<String>? cidrIpv6;

  /// The security group rule description.
  final Input<String>? description;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final Input<int>? fromPort;

  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if <span pulumi-lang-nodejs="`ipProtocol`" pulumi-lang-dotnet="`IpProtocol`" pulumi-lang-go="`ipProtocol`" pulumi-lang-python="`ip_protocol`" pulumi-lang-yaml="`ipProtocol`" pulumi-lang-java="`ipProtocol`">`ip_protocol`</span> is set to `-1`, it translates to all protocols, all port ranges, and <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> values should not be defined.
  final Input<String> ipProtocol;

  /// The ID of the source prefix list.
  final Input<String>? prefixListId;

  /// The source security group that is referenced in the rule.
  final Input<String>? referencedSecurityGroupId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ID of the security group.
  final Input<String> securityGroupId;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  ///
  /// > **Note** Although <span pulumi-lang-nodejs="`cidrIpv4`" pulumi-lang-dotnet="`CidrIpv4`" pulumi-lang-go="`cidrIpv4`" pulumi-lang-python="`cidr_ipv4`" pulumi-lang-yaml="`cidrIpv4`" pulumi-lang-java="`cidrIpv4`">`cidr_ipv4`</span>, <span pulumi-lang-nodejs="`cidrIpv6`" pulumi-lang-dotnet="`CidrIpv6`" pulumi-lang-go="`cidrIpv6`" pulumi-lang-python="`cidr_ipv6`" pulumi-lang-yaml="`cidrIpv6`" pulumi-lang-java="`cidrIpv6`">`cidr_ipv6`</span>, <span pulumi-lang-nodejs="`prefixListId`" pulumi-lang-dotnet="`PrefixListId`" pulumi-lang-go="`prefixListId`" pulumi-lang-python="`prefix_list_id`" pulumi-lang-yaml="`prefixListId`" pulumi-lang-java="`prefixListId`">`prefix_list_id`</span>, and <span pulumi-lang-nodejs="`referencedSecurityGroupId`" pulumi-lang-dotnet="`ReferencedSecurityGroupId`" pulumi-lang-go="`referencedSecurityGroupId`" pulumi-lang-python="`referenced_security_group_id`" pulumi-lang-yaml="`referencedSecurityGroupId`" pulumi-lang-java="`referencedSecurityGroupId`">`referenced_security_group_id`</span> are all marked as optional, you *must* provide one of them in order to configure the destination of the traffic. The <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> arguments are required unless <span pulumi-lang-nodejs="`ipProtocol`" pulumi-lang-dotnet="`IpProtocol`" pulumi-lang-go="`ipProtocol`" pulumi-lang-python="`ip_protocol`" pulumi-lang-yaml="`ipProtocol`" pulumi-lang-java="`ipProtocol`">`ip_protocol`</span> is set to `-1` or <span pulumi-lang-nodejs="`icmpv6`" pulumi-lang-dotnet="`Icmpv6`" pulumi-lang-go="`icmpv6`" pulumi-lang-python="`icmpv6`" pulumi-lang-yaml="`icmpv6`" pulumi-lang-java="`icmpv6`">`icmpv6`</span>.
  final Input<int>? toPort;

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
    final map = <String, dynamic>{};
    final cidrIpv4Value = cidrIpv4;
    if (cidrIpv4Value != null) {
      map['cidrIpv4'] = cidrIpv4Value;
    }
    final cidrIpv6Value = cidrIpv6;
    if (cidrIpv6Value != null) {
      map['cidrIpv6'] = cidrIpv6Value;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final fromPortValue = fromPort;
    if (fromPortValue != null) {
      map['fromPort'] = fromPortValue;
    }
    map['ipProtocol'] = ipProtocol;
    final prefixListIdValue = prefixListId;
    if (prefixListIdValue != null) {
      map['prefixListId'] = prefixListIdValue;
    }
    final referencedSecurityGroupIdValue = referencedSecurityGroupId;
    if (referencedSecurityGroupIdValue != null) {
      map['referencedSecurityGroupId'] = referencedSecurityGroupIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['securityGroupId'] = securityGroupId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final toPortValue = toPort;
    if (toPortValue != null) {
      map['toPort'] = toPortValue;
    }
    return map;
  }

  factory SecurityGroupIngressRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupIngressRuleArgs(
      cidrIpv4: Input.asOptionalInput<String>(map['cidrIpv4']),
      cidrIpv6: Input.asOptionalInput<String>(map['cidrIpv6']),
      description: Input.asOptionalInput<String>(map['description']),
      fromPort: Input.asOptionalInput<int>(map['fromPort']),
      ipProtocol: Input.asInput<String>(map['ipProtocol']),
      prefixListId: Input.asOptionalInput<String>(map['prefixListId']),
      referencedSecurityGroupId:
          Input.asOptionalInput<String>(map['referencedSecurityGroupId']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupId: Input.asInput<String>(map['securityGroupId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      toPort: Input.asOptionalInput<int>(map['toPort']),
    );
  }
}
