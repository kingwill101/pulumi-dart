// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_firewall_policy_with_rules_predefined_rule_match_layer4_config/network_firewall_policy_with_rules_predefined_rule_match_layer4_config.dart';
import '../network_firewall_policy_with_rules_predefined_rule_match_src_secure_tag/network_firewall_policy_with_rules_predefined_rule_match_src_secure_tag.dart';

class NetworkFirewallPolicyWithRulesPredefinedRuleMatch {
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
  final List<NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>?
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
  final List<NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>?
      srcSecureTags;

  /// Names of Network Threat Intelligence lists.
  /// The IPs in these lists will be matched against traffic source.
  final List<String>? srcThreatIntelligences;

  NetworkFirewallPolicyWithRulesPredefinedRuleMatch({
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
      map['layer4Configs'] = Input.encodeList<
          NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config,
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
      map['srcSecureTags'] = Input.encodeList<
          NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag,
          Map<String, dynamic>>(srcSecureTagsValue, (value) => value.toMap());
    }
    final srcThreatIntelligencesValue = srcThreatIntelligences;
    if (srcThreatIntelligencesValue != null) {
      map['srcThreatIntelligences'] = srcThreatIntelligencesValue;
    }
    return map;
  }

  factory NetworkFirewallPolicyWithRulesPredefinedRuleMatch.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyWithRulesPredefinedRuleMatch(
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
          : Input.decodeList<
                  NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config>(
              map['layer4Configs'],
              (value) =>
                  NetworkFirewallPolicyWithRulesPredefinedRuleMatchLayer4Config
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
          : Input.decodeList<
                  NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag>(
              map['srcSecureTags'],
              (value) =>
                  NetworkFirewallPolicyWithRulesPredefinedRuleMatchSrcSecureTag
                      .fromMap((value as Map).cast<String, dynamic>())),
      srcThreatIntelligences: map['srcThreatIntelligences'] == null
          ? null
          : (map['srcThreatIntelligences'] as List).cast<String>(),
    );
  }
}
