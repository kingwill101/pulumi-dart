// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_layer4_config_response_compute_v1.dart';
import 'firewall_policy_rule_secure_tag_response_compute_v1.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class FirewallPolicyRuleMatcherResponseComputeV1 {
  /// Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  final List<String> destAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  final List<String> destFqdns;

  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final List<String> destIpRanges;

  /// Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  final List<String> destRegionCodes;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  final List<String> destThreatIntelligences;

  /// Pairs of IP protocols and ports that the rule should match.
  final List<FirewallPolicyRuleMatcherLayer4ConfigResponseComputeV1>
      layer4Configs;

  /// Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  final List<String> srcAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  final List<String> srcFqdns;

  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final List<String> srcIpRanges;

  /// Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  final List<String> srcRegionCodes;

  /// List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  final List<FirewallPolicyRuleSecureTagResponseComputeV1> srcSecureTags;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  final List<String> srcThreatIntelligences;

  FirewallPolicyRuleMatcherResponseComputeV1({
    required this.destAddressGroups,
    required this.destFqdns,
    required this.destIpRanges,
    required this.destRegionCodes,
    required this.destThreatIntelligences,
    required this.layer4Configs,
    required this.srcAddressGroups,
    required this.srcFqdns,
    required this.srcIpRanges,
    required this.srcRegionCodes,
    required this.srcSecureTags,
    required this.srcThreatIntelligences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destAddressGroups'] = destAddressGroups;
    map['destFqdns'] = destFqdns;
    map['destIpRanges'] = destIpRanges;
    map['destRegionCodes'] = destRegionCodes;
    map['destThreatIntelligences'] = destThreatIntelligences;
    map['layer4Configs'] = pulumi.Input.encodeList<
        FirewallPolicyRuleMatcherLayer4ConfigResponseComputeV1,
        Map<String, dynamic>>(layer4Configs, (value) => value.toMap());
    map['srcAddressGroups'] = srcAddressGroups;
    map['srcFqdns'] = srcFqdns;
    map['srcIpRanges'] = srcIpRanges;
    map['srcRegionCodes'] = srcRegionCodes;
    map['srcSecureTags'] = pulumi.Input.encodeList<
        FirewallPolicyRuleSecureTagResponseComputeV1,
        Map<String, dynamic>>(srcSecureTags, (value) => value.toMap());
    map['srcThreatIntelligences'] = srcThreatIntelligences;
    return map;
  }

  factory FirewallPolicyRuleMatcherResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyRuleMatcherResponseComputeV1(
      destAddressGroups: (map['destAddressGroups'] as List).cast<String>(),
      destFqdns: (map['destFqdns'] as List).cast<String>(),
      destIpRanges: (map['destIpRanges'] as List).cast<String>(),
      destRegionCodes: (map['destRegionCodes'] as List).cast<String>(),
      destThreatIntelligences:
          (map['destThreatIntelligences'] as List).cast<String>(),
      layer4Configs: pulumi.Input.decodeList<
              FirewallPolicyRuleMatcherLayer4ConfigResponseComputeV1>(
          map['layer4Configs'],
          (value) =>
              FirewallPolicyRuleMatcherLayer4ConfigResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcAddressGroups: (map['srcAddressGroups'] as List).cast<String>(),
      srcFqdns: (map['srcFqdns'] as List).cast<String>(),
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
      srcRegionCodes: (map['srcRegionCodes'] as List).cast<String>(),
      srcSecureTags:
          pulumi.Input.decodeList<FirewallPolicyRuleSecureTagResponseComputeV1>(
              map['srcSecureTags'],
              (value) => FirewallPolicyRuleSecureTagResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcThreatIntelligences:
          (map['srcThreatIntelligences'] as List).cast<String>(),
    );
  }
}
