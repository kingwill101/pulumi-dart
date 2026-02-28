// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_network_matcher_user_defined_field_match_response_compute_v1.dart';

/// Represents a match condition that incoming network traffic is evaluated against.
class SecurityPolicyRuleNetworkMatcherResponseComputeV1 {
  /// Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final List<String> destIpRanges;
  /// Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final List<String> destPorts;
  /// IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  final List<String> ipProtocols;
  /// BGP Autonomous System Number associated with the source IP address.
  final List<int> srcAsns;
  /// Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final List<String> srcIpRanges;
  /// Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final List<String> srcPorts;
  /// Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  final List<String> srcRegionCodes;
  /// User-defined fields. Each element names a defined field and lists the matching values for that field.
  final List<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1> userDefinedFields;

  /// Creates a new [SecurityPolicyRuleNetworkMatcherResponseComputeV1].
  /// [destIpRanges] Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [destPorts] Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [ipProtocols] IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  /// [srcAsns] BGP Autonomous System Number associated with the source IP address.
  /// [srcIpRanges] Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [srcPorts] Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [srcRegionCodes] Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  /// [userDefinedFields] User-defined fields. Each element names a defined field and lists the matching values for that field.
  SecurityPolicyRuleNetworkMatcherResponseComputeV1({
    required this.destIpRanges,
    required this.destPorts,
    required this.ipProtocols,
    required this.srcAsns,
    required this.srcIpRanges,
    required this.srcPorts,
    required this.srcRegionCodes,
    required this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destIpRanges': destIpRanges,
      'destPorts': destPorts,
      'ipProtocols': ipProtocols,
      'srcAsns': srcAsns,
      'srcIpRanges': srcIpRanges,
      'srcPorts': srcPorts,
      'srcRegionCodes': srcRegionCodes,
      'userDefinedFields': pulumi.Input.encodeList<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1, Map<String, dynamic>>(userDefinedFields, (value) => value.toMap()),
    };
  }

  factory SecurityPolicyRuleNetworkMatcherResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcherResponseComputeV1(
      destIpRanges: (map['destIpRanges'] as List).cast<String>(),
      destPorts: (map['destPorts'] as List).cast<String>(),
      ipProtocols: (map['ipProtocols'] as List).cast<String>(),
      srcAsns: (map['srcAsns'] as List).cast<int>(),
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
      srcPorts: (map['srcPorts'] as List).cast<String>(),
      srcRegionCodes: (map['srcRegionCodes'] as List).cast<String>(),
      userDefinedFields: pulumi.Input.decodeList<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1>(map['userDefinedFields'], (value) => SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

