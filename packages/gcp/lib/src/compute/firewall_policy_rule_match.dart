// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_match_layer4_config.dart';
import 'firewall_policy_rule_match_src_secure_tag.dart';

class FirewallPolicyRuleMatch {
  /// Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  final List<String>? destAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  final List<String>? destFqdns;

  /// CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  final List<String>? destIpRanges;

  /// Network scope of the traffic destination.
  /// Possible values are: `INTERNET`, `INTRA_VPC`, `NON_INTERNET`, `VPC_NETWORKS`.
  final String? destNetworkScope;

  /// Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  final List<String>? destRegionCodes;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  final List<String>? destThreatIntelligences;

  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  final List<FirewallPolicyRuleMatchLayer4Config> layer4Configs;

  /// Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  final List<String>? srcAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  final List<String>? srcFqdns;

  /// CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  final List<String>? srcIpRanges;

  /// Network scope of the traffic source.
  /// Possible values are: `INTERNET`, `INTRA_VPC`, `NON_INTERNET`, `VPC_NETWORKS`.
  final String? srcNetworkScope;

  /// Networks of the traffic source. It can be either a full or partial url.
  final List<String>? srcNetworks;

  /// Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  final List<String>? srcRegionCodes;

  /// List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_match_layer4_configs"></a>The `layer4_configs` block supports:
  final List<FirewallPolicyRuleMatchSrcSecureTag>? srcSecureTags;

  /// Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  final List<String>? srcThreatIntelligences;

  /// Creates a new [FirewallPolicyRuleMatch].
  /// [destAddressGroups] Address groups which should be matched against the traffic destination. Maximum number of destination address groups is 10.
  /// [destFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic destination. Maximum number of destination fqdn allowed is 100.
  /// [destIpRanges] CIDR IP address range. Maximum number of destination CIDR IP ranges allowed is 5000.
  /// [destNetworkScope] Network scope of the traffic destination.
  /// [destRegionCodes] Region codes whose IP addresses will be used to match for destination of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of dest region codes allowed is 5000.
  /// [destThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic destination.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcAddressGroups] Address groups which should be matched against the traffic source. Maximum number of source address groups is 10.
  /// [srcFqdns] Fully Qualified Domain Name (FQDN) which should be matched against traffic source. Maximum number of source fqdn allowed is 100.
  /// [srcIpRanges] CIDR IP address range. Maximum number of source CIDR IP ranges allowed is 5000.
  /// [srcNetworkScope] Network scope of the traffic source.
  /// [srcNetworks] Networks of the traffic source. It can be either a full or partial url.
  /// [srcRegionCodes] Region codes whose IP addresses will be used to match for source of traffic. Should be specified as 2 letter country code defined as per ISO 3166 alpha-2 country codes. ex."US" Maximum number of source region codes allowed is 5000.
  /// [srcSecureTags] List of secure tag values, which should be matched at the source of the traffic. For INGRESS rule, if all the srcSecureTag are INEFFECTIVE, and there is no srcIpRange, this rule will be ignored. Maximum number of source tag values allowed is 256.
  /// [srcThreatIntelligences] Names of Network Threat Intelligence lists. The IPs in these lists will be matched against traffic source.
  FirewallPolicyRuleMatch({
    this.destAddressGroups,
    this.destFqdns,
    this.destIpRanges,
    this.destNetworkScope,
    this.destRegionCodes,
    this.destThreatIntelligences,
    required this.layer4Configs,
    this.srcAddressGroups,
    this.srcFqdns,
    this.srcIpRanges,
    this.srcNetworkScope,
    this.srcNetworks,
    this.srcRegionCodes,
    this.srcSecureTags,
    this.srcThreatIntelligences,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destAddressGroupsValue = destAddressGroups;
    if (destAddressGroupsValue != null) {
      map['destAddressGroups'] = destAddressGroupsValue;
    }
    final destFqdnsValue = destFqdns;
    if (destFqdnsValue != null) {
      map['destFqdns'] = destFqdnsValue;
    }
    final destIpRangesValue = destIpRanges;
    if (destIpRangesValue != null) {
      map['destIpRanges'] = destIpRangesValue;
    }
    final destNetworkScopeValue = destNetworkScope;
    if (destNetworkScopeValue != null) {
      map['destNetworkScope'] = destNetworkScopeValue;
    }
    final destRegionCodesValue = destRegionCodes;
    if (destRegionCodesValue != null) {
      map['destRegionCodes'] = destRegionCodesValue;
    }
    final destThreatIntelligencesValue = destThreatIntelligences;
    if (destThreatIntelligencesValue != null) {
      map['destThreatIntelligences'] = destThreatIntelligencesValue;
    }
    map['layer4Configs'] = pulumi.Input.encodeList<
        FirewallPolicyRuleMatchLayer4Config,
        Map<String, dynamic>>(layer4Configs, (value) => value.toMap());
    final srcAddressGroupsValue = srcAddressGroups;
    if (srcAddressGroupsValue != null) {
      map['srcAddressGroups'] = srcAddressGroupsValue;
    }
    final srcFqdnsValue = srcFqdns;
    if (srcFqdnsValue != null) {
      map['srcFqdns'] = srcFqdnsValue;
    }
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    final srcNetworkScopeValue = srcNetworkScope;
    if (srcNetworkScopeValue != null) {
      map['srcNetworkScope'] = srcNetworkScopeValue;
    }
    final srcNetworksValue = srcNetworks;
    if (srcNetworksValue != null) {
      map['srcNetworks'] = srcNetworksValue;
    }
    final srcRegionCodesValue = srcRegionCodes;
    if (srcRegionCodesValue != null) {
      map['srcRegionCodes'] = srcRegionCodesValue;
    }
    final srcSecureTagsValue = srcSecureTags;
    if (srcSecureTagsValue != null) {
      map['srcSecureTags'] = pulumi.Input.encodeList<
          FirewallPolicyRuleMatchSrcSecureTag,
          Map<String, dynamic>>(srcSecureTagsValue, (value) => value.toMap());
    }
    final srcThreatIntelligencesValue = srcThreatIntelligences;
    if (srcThreatIntelligencesValue != null) {
      map['srcThreatIntelligences'] = srcThreatIntelligencesValue;
    }
    return map;
  }

  factory FirewallPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyRuleMatch(
      destAddressGroups: map['destAddressGroups'] == null
          ? null
          : (map['destAddressGroups'] as List).cast<String>(),
      destFqdns: map['destFqdns'] == null
          ? null
          : (map['destFqdns'] as List).cast<String>(),
      destIpRanges: map['destIpRanges'] == null
          ? null
          : (map['destIpRanges'] as List).cast<String>(),
      destNetworkScope: map['destNetworkScope'] == null
          ? null
          : map['destNetworkScope'] as String,
      destRegionCodes: map['destRegionCodes'] == null
          ? null
          : (map['destRegionCodes'] as List).cast<String>(),
      destThreatIntelligences: map['destThreatIntelligences'] == null
          ? null
          : (map['destThreatIntelligences'] as List).cast<String>(),
      layer4Configs:
          pulumi.Input.decodeList<FirewallPolicyRuleMatchLayer4Config>(
              map['layer4Configs'],
              (value) => FirewallPolicyRuleMatchLayer4Config.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcAddressGroups: map['srcAddressGroups'] == null
          ? null
          : (map['srcAddressGroups'] as List).cast<String>(),
      srcFqdns: map['srcFqdns'] == null
          ? null
          : (map['srcFqdns'] as List).cast<String>(),
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
      srcNetworkScope: map['srcNetworkScope'] == null
          ? null
          : map['srcNetworkScope'] as String,
      srcNetworks: map['srcNetworks'] == null
          ? null
          : (map['srcNetworks'] as List).cast<String>(),
      srcRegionCodes: map['srcRegionCodes'] == null
          ? null
          : (map['srcRegionCodes'] as List).cast<String>(),
      srcSecureTags: map['srcSecureTags'] == null
          ? null
          : pulumi.Input.decodeList<FirewallPolicyRuleMatchSrcSecureTag>(
              map['srcSecureTags'],
              (value) => FirewallPolicyRuleMatchSrcSecureTag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      srcThreatIntelligences: map['srcThreatIntelligences'] == null
          ? null
          : (map['srcThreatIntelligences'] as List).cast<String>(),
    );
  }
}
