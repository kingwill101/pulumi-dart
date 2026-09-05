// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rule_filter.dart';

/// Result data returned by getSecurityGroupRule.
class GetSecurityGroupRuleResult {
  /// ARN of the security group rule.
  final String? arn;
  /// The destination IPv4 CIDR range.
  final String? cidrIpv4;
  /// The destination IPv6 CIDR range.
  final String? cidrIpv6;
  /// The security group rule description.
  final String? description;
  final List<GetSecurityGroupRuleFilter>? filters;
  /// The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final int? fromPort;
  final String? id;
  /// The IP protocol name or number. Use `-1` to specify all protocols.
  final String? ipProtocol;
  /// Indicates whether the security group rule is an outbound rule.
  final bool? isEgress;
  /// The ID of the destination prefix list.
  final String? prefixListId;
  /// The destination security group that is referenced in the rule.
  final String? referencedSecurityGroupId;
  final String? region;
  /// The ID of the security group.
  final String? securityGroupId;
  final String? securityGroupRuleId;
  /// A map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// (Optional) The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  final int? toPort;

  /// Creates a new [GetSecurityGroupRuleResult].
  /// [arn] ARN of the security group rule.
  /// [cidrIpv4] The destination IPv4 CIDR range.
  /// [cidrIpv6] The destination IPv6 CIDR range.
  /// [description] The security group rule description.
  /// [filters] Optional.
  /// [fromPort] The start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  /// [id] Optional.
  /// [ipProtocol] The IP protocol name or number. Use `-1` to specify all protocols.
  /// [isEgress] Indicates whether the security group rule is an outbound rule.
  /// [prefixListId] The ID of the destination prefix list.
  /// [referencedSecurityGroupId] The destination security group that is referenced in the rule.
  /// [region] Optional.
  /// [securityGroupId] The ID of the security group.
  /// [securityGroupRuleId] Optional.
  /// [tags] A map of tags assigned to the resource.
  /// [toPort] (Optional) The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  const GetSecurityGroupRuleResult({
    this.arn,
    this.cidrIpv4,
    this.cidrIpv6,
    this.description,
    this.filters,
    this.fromPort,
    this.id,
    this.ipProtocol,
    this.isEgress,
    this.prefixListId,
    this.referencedSecurityGroupId,
    this.region,
    this.securityGroupId,
    this.securityGroupRuleId,
    this.tags,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cidrIpv4': ?cidrIpv4,
      'cidrIpv6': ?cidrIpv6,
      'description': ?description,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityGroupRuleFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'fromPort': ?fromPort,
      'id': ?id,
      'ipProtocol': ?ipProtocol,
      'isEgress': ?isEgress,
      'prefixListId': ?prefixListId,
      'referencedSecurityGroupId': ?referencedSecurityGroupId,
      'region': ?region,
      'securityGroupId': ?securityGroupId,
      'securityGroupRuleId': ?securityGroupRuleId,
      'tags': ?tags,
      'toPort': ?toPort,
    };
  }

  factory GetSecurityGroupRuleResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRuleResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrIpv4: (() { final guardedValue = map['cidrIpv4']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrIpv6: (() { final guardedValue = map['cidrIpv6']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityGroupRuleFilter>(guardedValue, (value) => GetSecurityGroupRuleFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEgress: (() { final guardedValue = map['isEgress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referencedSecurityGroupId: (() { final guardedValue = map['referencedSecurityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupRuleId: (() { final guardedValue = map['securityGroupRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
    );
  }
}
