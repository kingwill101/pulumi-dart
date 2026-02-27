// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'security_policy_rule_network_matcher_user_defined_field_match_response.dart';

/// Represents a match condition that incoming network traffic is evaluated against.
class SecurityPolicyRuleNetworkMatcherResponse {
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
  final List<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse>
      userDefinedFields;

  SecurityPolicyRuleNetworkMatcherResponse({
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
    final map = <String, dynamic>{};
    map['destIpRanges'] = destIpRanges;
    map['destPorts'] = destPorts;
    map['ipProtocols'] = ipProtocols;
    map['srcAsns'] = srcAsns;
    map['srcIpRanges'] = srcIpRanges;
    map['srcPorts'] = srcPorts;
    map['srcRegionCodes'] = srcRegionCodes;
    map['userDefinedFields'] = Input.encodeList<
        SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse,
        Map<String, dynamic>>(userDefinedFields, (value) => value.toMap());
    return map;
  }

  factory SecurityPolicyRuleNetworkMatcherResponse.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcherResponse(
      destIpRanges: (map['destIpRanges'] as List).cast<String>(),
      destPorts: (map['destPorts'] as List).cast<String>(),
      ipProtocols: (map['ipProtocols'] as List).cast<String>(),
      srcAsns: (map['srcAsns'] as List).cast<int>(),
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
      srcPorts: (map['srcPorts'] as List).cast<String>(),
      srcRegionCodes: (map['srcRegionCodes'] as List).cast<String>(),
      userDefinedFields: Input.decodeList<
              SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse>(
          map['userDefinedFields'],
          (value) =>
              SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatchResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
