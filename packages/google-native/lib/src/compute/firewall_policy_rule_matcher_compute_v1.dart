// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_matcher_layer4_config_compute_v1.dart';
import 'firewall_policy_rule_secure_tag_compute_v1.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class FirewallPolicyRuleMatcherComputeV1 {
  /// Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  final List<String>? destAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  final List<String>? destFqdns;

  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final List<String>? destIpRanges;

  /// Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  final List<String>? destRegionCodes;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  final List<String>? destThreatIntelligences;

  /// Pairs of IP protocols and ports that the rule should match.
  final List<FirewallPolicyRuleMatcherLayer4ConfigComputeV1>? layer4Configs;

  /// Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  final List<String>? srcAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  final List<String>? srcFqdns;

  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final List<String>? srcIpRanges;

  /// Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  final List<String>? srcRegionCodes;

  /// List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  final List<FirewallPolicyRuleSecureTagComputeV1>? srcSecureTags;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  final List<String>? srcThreatIntelligences;

  /// Creates a new [FirewallPolicyRuleMatcherComputeV1].
  /// [destAddressGroups] Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  /// [destFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  /// [destIpRanges] CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  /// [destRegionCodes] Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  /// [destThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcAddressGroups] Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  /// [srcFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  /// [srcIpRanges] CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  /// [srcRegionCodes] Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  /// [srcSecureTags] List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  /// [srcThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  FirewallPolicyRuleMatcherComputeV1({
    this.destAddressGroups,
    this.destFqdns,
    this.destIpRanges,
    this.destRegionCodes,
    this.destThreatIntelligences,
    this.layer4Configs,
    this.srcAddressGroups,
    this.srcFqdns,
    this.srcIpRanges,
    this.srcRegionCodes,
    this.srcSecureTags,
    this.srcThreatIntelligences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destAddressGroups': ?destAddressGroups,
      'destFqdns': ?destFqdns,
      'destIpRanges': ?destIpRanges,
      'destRegionCodes': ?destRegionCodes,
      'destThreatIntelligences': ?destThreatIntelligences,
      'layer4Configs': ?layer4Configs == null
          ? null
          : pulumi.Input.encodeList<
              FirewallPolicyRuleMatcherLayer4ConfigComputeV1,
              Map<String, dynamic>
            >(layer4Configs!, (value) => value.toMap()),
      'srcAddressGroups': ?srcAddressGroups,
      'srcFqdns': ?srcFqdns,
      'srcIpRanges': ?srcIpRanges,
      'srcRegionCodes': ?srcRegionCodes,
      'srcSecureTags': ?srcSecureTags == null
          ? null
          : pulumi.Input.encodeList<
              FirewallPolicyRuleSecureTagComputeV1,
              Map<String, dynamic>
            >(srcSecureTags!, (value) => value.toMap()),
      'srcThreatIntelligences': ?srcThreatIntelligences,
    };
  }

  factory FirewallPolicyRuleMatcherComputeV1.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleMatcherComputeV1(
      destAddressGroups: map['destAddressGroups'] == null
          ? null
          : (map['destAddressGroups'] as List).cast<String>(),
      destFqdns: map['destFqdns'] == null
          ? null
          : (map['destFqdns'] as List).cast<String>(),
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      destRegionCodes: map['destRegionCodes'] == null
          ? null
          : (map['destRegionCodes'] as List).cast<String>(),
      destThreatIntelligences: map['destThreatIntelligences'] == null
          ? null
          : (map['destThreatIntelligences'] as List).cast<String>(),
      layer4Configs: map['layer4Configs'] == null
          ? null
          : pulumi.Input.decodeList<
              FirewallPolicyRuleMatcherLayer4ConfigComputeV1
            >(
              map['layer4Configs'],
              (value) => FirewallPolicyRuleMatcherLayer4ConfigComputeV1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      srcAddressGroups: map['srcAddressGroups'] == null
          ? null
          : (map['srcAddressGroups'] as List).cast<String>(),
      srcFqdns: map['srcFqdns'] == null
          ? null
          : (map['srcFqdns'] as List).cast<String>(),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
      srcRegionCodes: map['srcRegionCodes'] == null
          ? null
          : (map['srcRegionCodes'] as List).cast<String>(),
      srcSecureTags: map['srcSecureTags'] == null
          ? null
          : pulumi.Input.decodeList<FirewallPolicyRuleSecureTagComputeV1>(
              map['srcSecureTags'],
              (value) => FirewallPolicyRuleSecureTagComputeV1.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      srcThreatIntelligences: map['srcThreatIntelligences'] == null
          ? null
          : (map['srcThreatIntelligences'] as List).cast<String>(),
    );
  }
}
