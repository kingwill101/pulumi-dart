// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_network_matcher_user_defined_field_match.dart';

/// Represents a match condition that incoming network traffic is evaluated against.
class SecurityPolicyRuleNetworkMatcher {
  /// Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final List<String>? destIpRanges;

  /// Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final List<String>? destPorts;

  /// IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  final List<String>? ipProtocols;

  /// BGP Autonomous System Number associated with the source IP address.
  final List<int>? srcAsns;

  /// Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  final List<String>? srcIpRanges;

  /// Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  final List<String>? srcPorts;

  /// Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  final List<String>? srcRegionCodes;

  /// User-defined fields. Each element names a defined field and lists the matching values for that field.
  final List<SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch>?
      userDefinedFields;

  /// Creates a new [SecurityPolicyRuleNetworkMatcher].
  /// [destIpRanges] Destination IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [destPorts] Destination port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [ipProtocols] IPv4 protocol / IPv6 next header (after extension headers). Each element can be an 8-bit unsigned decimal number (e.g. "6"), range (e.g. "253-254"), or one of the following protocol names: "tcp", "udp", "icmp", "esp", "ah", "ipip", or "sctp".
  /// [srcAsns] BGP Autonomous System Number associated with the source IP address.
  /// [srcIpRanges] Source IPv4/IPv6 addresses or CIDR prefixes, in standard text format.
  /// [srcPorts] Source port numbers for TCP/UDP/SCTP. Each element can be a 16-bit unsigned decimal number (e.g. "80") or range (e.g. "0-1023").
  /// [srcRegionCodes] Two-letter ISO 3166-1 alpha-2 country code associated with the source IP address.
  /// [userDefinedFields] User-defined fields. Each element names a defined field and lists the matching values for that field.
  SecurityPolicyRuleNetworkMatcher({
    this.destIpRanges,
    this.destPorts,
    this.ipProtocols,
    this.srcAsns,
    this.srcIpRanges,
    this.srcPorts,
    this.srcRegionCodes,
    this.userDefinedFields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destIpRangesValue = destIpRanges;
    if (destIpRangesValue != null) {
      map['destIpRanges'] = destIpRangesValue;
    }
    final destPortsValue = destPorts;
    if (destPortsValue != null) {
      map['destPorts'] = destPortsValue;
    }
    final ipProtocolsValue = ipProtocols;
    if (ipProtocolsValue != null) {
      map['ipProtocols'] = ipProtocolsValue;
    }
    final srcAsnsValue = srcAsns;
    if (srcAsnsValue != null) {
      map['srcAsns'] = srcAsnsValue;
    }
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    final srcPortsValue = srcPorts;
    if (srcPortsValue != null) {
      map['srcPorts'] = srcPortsValue;
    }
    final srcRegionCodesValue = srcRegionCodes;
    if (srcRegionCodesValue != null) {
      map['srcRegionCodes'] = srcRegionCodesValue;
    }
    final userDefinedFieldsValue = userDefinedFields;
    if (userDefinedFieldsValue != null) {
      map['userDefinedFields'] = pulumi.Input.encodeList<
              SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch,
              Map<String, dynamic>>(
          userDefinedFieldsValue, (value) => value.toMap());
    }
    return map;
  }

  factory SecurityPolicyRuleNetworkMatcher.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleNetworkMatcher(
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      destPorts: map['destPorts'] == null
          ? null
          : (map['destPorts'] as List).cast<String>(),
      ipProtocols: map['ipProtocols'] == null
          ? null
          : (map['ipProtocols'] as List).cast<String>(),
      srcAsns:
          map['srcAsns'] == null ? null : (map['srcAsns'] as List).cast<int>(),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
      srcPorts: map['srcPorts'] == null
          ? null
          : (map['srcPorts'] as List).cast<String>(),
      srcRegionCodes: map['srcRegionCodes'] == null
          ? null
          : (map['srcRegionCodes'] as List).cast<String>(),
      userDefinedFields: map['userDefinedFields'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch>(
              map['userDefinedFields'],
              (value) =>
                  SecurityPolicyRuleNetworkMatcherUserDefinedFieldMatch.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
