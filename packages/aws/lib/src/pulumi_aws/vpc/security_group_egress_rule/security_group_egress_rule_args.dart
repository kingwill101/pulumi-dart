// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for SecurityGroupEgressRule.
class SecurityGroupEgressRuleArgs {
  /// The destination IPv4 CIDR range.
  final pulumi.Input<String>? cidrIpv4;

  /// The destination IPv6 CIDR range.
  final pulumi.Input<String>? cidrIpv6;

  /// The security group rule description.
  final pulumi.Input<String>? description;

  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final pulumi.Input<int>? fromPort;

  /// The IP protocol name or number. Use `-1` to specify all protocols. Note that if `ip_protocol` is set to `-1`, it translates to all protocols, all port ranges, and `from_port` and `to_port` values should not be defined.
  final pulumi.Input<String> ipProtocol;

  /// The ID of the destination prefix list.
  final pulumi.Input<String>? prefixListId;

  /// The destination security group that is referenced in the rule.
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

  SecurityGroupEgressRuleArgs({
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

  factory SecurityGroupEgressRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityGroupEgressRuleArgs(
      cidrIpv4: pulumi.Input.asOptionalInput<String>(map['cidrIpv4']),
      cidrIpv6: pulumi.Input.asOptionalInput<String>(map['cidrIpv6']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      fromPort: pulumi.Input.asOptionalInput<int>(map['fromPort']),
      ipProtocol: pulumi.Input.asInput<String>(map['ipProtocol']),
      prefixListId: pulumi.Input.asOptionalInput<String>(map['prefixListId']),
      referencedSecurityGroupId: pulumi.Input.asOptionalInput<String>(
          map['referencedSecurityGroupId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupId: pulumi.Input.asInput<String>(map['securityGroupId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      toPort: pulumi.Input.asOptionalInput<int>(map['toPort']),
    );
  }
}
