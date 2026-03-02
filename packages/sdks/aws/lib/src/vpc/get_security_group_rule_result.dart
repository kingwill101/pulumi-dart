// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rule_filter.dart';

/// Result data returned by getSecurityGroupRule.
class GetSecurityGroupRuleResult {
  /// The Amazon Resource Name (ARN) of the security group rule.
  final String arn;
  /// The destination IPv4 CIDR range.
  final String cidrIpv4;
  /// The destination IPv6 CIDR range.
  final String cidrIpv6;
  /// The security group rule description.
  final String description;
  final List<GetSecurityGroupRuleFilter>? filters;
  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final int fromPort;
  final String id;
  /// The IP protocol name or number. Use `-1` to specify all protocols.
  final String ipProtocol;
  /// Indicates whether the security group rule is an outbound rule.
  final bool isEgress;
  /// The ID of the destination prefix list.
  final String prefixListId;
  /// The destination security group that is referenced in the rule.
  final String referencedSecurityGroupId;
  final String region;
  /// The ID of the security group.
  final String securityGroupId;
  final String securityGroupRuleId;
  /// A map of tags assigned to the resource.
  final Map<String, String> tags;
  /// (Optional) The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  final int toPort;

  /// Creates a new [GetSecurityGroupRuleResult].
  /// [arn] The Amazon Resource Name (ARN) of the security group rule.
  /// [cidrIpv4] The destination IPv4 CIDR range.
  /// [cidrIpv6] The destination IPv6 CIDR range.
  /// [description] The security group rule description.
  /// [filters] Optional.
  /// [fromPort] The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  /// [id] Required.
  /// [ipProtocol] The IP protocol name or number. Use `-1` to specify all protocols.
  /// [isEgress] Indicates whether the security group rule is an outbound rule.
  /// [prefixListId] The ID of the destination prefix list.
  /// [referencedSecurityGroupId] The destination security group that is referenced in the rule.
  /// [region] Required.
  /// [securityGroupId] The ID of the security group.
  /// [securityGroupRuleId] Required.
  /// [tags] A map of tags assigned to the resource.
  /// [toPort] (Optional) The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  GetSecurityGroupRuleResult({
    required this.arn,
    required this.cidrIpv4,
    required this.cidrIpv6,
    required this.description,
    this.filters,
    required this.fromPort,
    required this.id,
    required this.ipProtocol,
    required this.isEgress,
    required this.prefixListId,
    required this.referencedSecurityGroupId,
    required this.region,
    required this.securityGroupId,
    required this.securityGroupRuleId,
    required this.tags,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'cidrIpv4': cidrIpv4,
      'cidrIpv6': cidrIpv6,
      'description': description,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetSecurityGroupRuleFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'fromPort': fromPort,
      'id': id,
      'ipProtocol': ipProtocol,
      'isEgress': isEgress,
      'prefixListId': prefixListId,
      'referencedSecurityGroupId': referencedSecurityGroupId,
      'region': region,
      'securityGroupId': securityGroupId,
      'securityGroupRuleId': securityGroupRuleId,
      'tags': tags,
      'toPort': toPort,
    };
  }

  factory GetSecurityGroupRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRuleResult(
      arn: map['arn'] as String,
      cidrIpv4: map['cidrIpv4'] as String,
      cidrIpv6: map['cidrIpv6'] as String,
      description: map['description'] as String,
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetSecurityGroupRuleFilter>(map['filters']!, (value) => GetSecurityGroupRuleFilter.fromMap((value as Map).cast<String, dynamic>())),
      fromPort: map['fromPort'] as int,
      id: map['id'] as String,
      ipProtocol: map['ipProtocol'] as String,
      isEgress: map['isEgress'] as bool,
      prefixListId: map['prefixListId'] as String,
      referencedSecurityGroupId: map['referencedSecurityGroupId'] as String,
      region: map['region'] as String,
      securityGroupId: map['securityGroupId'] as String,
      securityGroupRuleId: map['securityGroupRuleId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      toPort: map['toPort'] as int,
    );
  }
}

