// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_group_rule_filter.dart';

/// Result data returned by getSecurityGroupRule.
class GetSecurityGroupRuleResult {
  /// ARN of the security group rule.
  final String? arn;
  /// Destination IPv4 CIDR range.
  final String? cidrIpv4;
  /// Destination IPv6 CIDR range.
  final String? cidrIpv6;
  /// Security group rule description.
  final String? description;
  final List<GetSecurityGroupRuleFilter>? filters;
  /// Start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  final int? fromPort;
  final String? id;
  /// IP protocol name or number. Use `-1` to specify all protocols.
  final String? ipProtocol;
  /// Whether the security group rule is an outbound rule.
  final bool? isEgress;
  /// ID of the destination prefix list.
  final String? prefixListId;
  /// Destination security group that is referenced in the rule.
  final String? referencedSecurityGroupId;
  final String? region;
  /// ID of the security group.
  final String? securityGroupId;
  final String? securityGroupRuleId;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// End of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
  final int? toPort;

  /// Creates a new [GetSecurityGroupRuleResult].
  /// [arn] ARN of the security group rule.
  /// [cidrIpv4] Destination IPv4 CIDR range.
  /// [cidrIpv6] Destination IPv6 CIDR range.
  /// [description] Security group rule description.
  /// [filters] Optional.
  /// [fromPort] Start of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 type.
  /// [id] Optional.
  /// [ipProtocol] IP protocol name or number. Use `-1` to specify all protocols.
  /// [isEgress] Whether the security group rule is an outbound rule.
  /// [prefixListId] ID of the destination prefix list.
  /// [referencedSecurityGroupId] Destination security group that is referenced in the rule.
  /// [region] Optional.
  /// [securityGroupId] ID of the security group.
  /// [securityGroupRuleId] Optional.
  /// [tags] Map of tags assigned to the resource.
  /// [toPort] End of port range for the TCP and UDP protocols, or an ICMP/ICMPv6 code.
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
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isEgress: (() { final guardedValue = map['isEgress']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      referencedSecurityGroupId: (() { final guardedValue = map['referencedSecurityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupRuleId: (() { final guardedValue = map['securityGroupRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
