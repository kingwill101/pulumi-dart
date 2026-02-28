// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_network_firewall_policy_with_rules_predefined_rule_match_layer4_config.dart';
import 'region_network_firewall_policy_with_rules_predefined_rule_match_src_secure_tag.dart';

class RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatch {
  /// Address groups which should be matched against the traffic destination.
  /// Maximum number of destination address groups is 10.
  final List<String>? destAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against
  /// traffic destination. Maximum number of destination fqdn allowed is 100.
  final List<String>? destFqdns;

  /// Destination IP address range in CIDR format. Required for
  /// EGRESS rules.
  final List<String>? destIpRanges;

  /// Region codes whose IP addresses will be used to match for destination
  /// of traffic. Should be specified as 2 letter country code defined as per
  /// ISO 3166 alpha-2 country codes. ex."US"
  /// Maximum number of destination region codes allowed is 5000.
  final List<String>? destRegionCodes;

  /// Names of Network Threat Intelligence lists.
  /// The IPs in these lists will be matched against traffic destination.
  final List<String>? destThreatIntelligences;

  /// Pairs of IP protocols and ports that the rule should match.
  /// Structure is documented below.
  final List<
          RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>?
      layer4Configs;

  /// Address groups which should be matched against the traffic source.
  /// Maximum number of source address groups is 10.
  final List<String>? srcAddressGroups;

  /// Fully Qualified Domain Name (FQDN) which should be matched against
  /// traffic source. Maximum number of source fqdn allowed is 100.
  final List<String>? srcFqdns;

  /// Source IP address range in CIDR format. Required for
  /// INGRESS rules.
  final List<String>? srcIpRanges;

  /// Region codes whose IP addresses will be used to match for source
  /// of traffic. Should be specified as 2 letter country code defined as per
  /// ISO 3166 alpha-2 country codes. ex."US"
  /// Maximum number of source region codes allowed is 5000.
  final List<String>? srcRegionCodes;

  /// List of secure tag values, which should be matched at the source
  /// of the traffic.
  /// For INGRESS rule, if all the <code>srcSecureTag</code> are INEFFECTIVE,
  /// and there is no <code>srcIpRange</code>, this rule will be ignored.
  /// Maximum number of source tag values allowed is 256.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_rule_match_layer4_config"></a>The `layer4_config` block supports:
  final List<
          RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>?
      srcSecureTags;

  /// Names of Network Threat Intelligence lists.
  /// The IPs in these lists will be matched against traffic source.
  final List<String>? srcThreatIntelligences;

  /// Creates a new [RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatch].
  /// [destAddressGroups] Address groups which should be matched against the traffic destination.
  /// [destFqdns] Fully Qualified Domain Name (FQDN) which should be matched against
  /// [destIpRanges] Destination IP address range in CIDR format. Required for
  /// [destRegionCodes] Region codes whose IP addresses will be used to match for destination
  /// [destThreatIntelligences] Names of Network Threat Intelligence lists.
  /// [layer4Configs] Pairs of IP protocols and ports that the rule should match.
  /// [srcAddressGroups] Address groups which should be matched against the traffic source.
  /// [srcFqdns] Fully Qualified Domain Name (FQDN) which should be matched against
  /// [srcIpRanges] Source IP address range in CIDR format. Required for
  /// [srcRegionCodes] Region codes whose IP addresses will be used to match for source
  /// [srcSecureTags] List of secure tag values, which should be matched at the source
  /// [srcThreatIntelligences] Names of Network Threat Intelligence lists.
  RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatch({
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
    final destRegionCodesValue = destRegionCodes;
    if (destRegionCodesValue != null) {
      map['destRegionCodes'] = destRegionCodesValue;
    }
    final destThreatIntelligencesValue = destThreatIntelligences;
    if (destThreatIntelligencesValue != null) {
      map['destThreatIntelligences'] = destThreatIntelligencesValue;
    }
    final layer4ConfigsValue = layer4Configs;
    if (layer4ConfigsValue != null) {
      map['layer4Configs'] = pulumi.Input.encodeList<
          RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config,
          Map<String, dynamic>>(layer4ConfigsValue, (value) => value.toMap());
    }
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
    final srcRegionCodesValue = srcRegionCodes;
    if (srcRegionCodesValue != null) {
      map['srcRegionCodes'] = srcRegionCodesValue;
    }
    final srcSecureTagsValue = srcSecureTags;
    if (srcSecureTagsValue != null) {
      map['srcSecureTags'] = pulumi.Input.encodeList<
          RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag,
          Map<String, dynamic>>(srcSecureTagsValue, (value) => value.toMap());
    }
    final srcThreatIntelligencesValue = srcThreatIntelligences;
    if (srcThreatIntelligencesValue != null) {
      map['srcThreatIntelligences'] = srcThreatIntelligencesValue;
    }
    return map;
  }

  factory RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatch.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatch(
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
                  RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>(
              map['layer4Configs'],
              (value) =>
                  RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config
                      .fromMap((value as Map).cast<String, dynamic>())),
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
          : pulumi.Input.decodeList<
                  RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>(
              map['srcSecureTags'],
              (value) =>
                  RegionNetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag
                      .fromMap((value as Map).cast<String, dynamic>())),
      srcThreatIntelligences: map['srcThreatIntelligences'] == null
          ? null
          : (map['srcThreatIntelligences'] as List).cast<String>(),
    );
  }
}
