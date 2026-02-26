// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_security_policy_rule_match/get_region_security_policy_rule_match.dart';
import '../get_region_security_policy_rule_network_match/get_region_security_policy_rule_network_match.dart';
import '../get_region_security_policy_rule_preconfigured_waf_config/get_region_security_policy_rule_preconfigured_waf_config.dart';
import '../get_region_security_policy_rule_rate_limit_option/get_region_security_policy_rule_rate_limit_option.dart';

class GetRegionSecurityPolicyRule {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  ///
  /// * allow: allow access to target.
  ///
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  ///
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  ///
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  ///
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  final String action;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  final List<GetRegionSecurityPolicyRuleMatch> matches;

  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields').
  /// Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
  /// Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all.
  /// For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
  /// Example:
  /// networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: <span pulumi-lang-nodejs=""ipv4FragmentOffset"" pulumi-lang-dotnet=""Ipv4FragmentOffset"" pulumi-lang-go=""ipv4FragmentOffset"" pulumi-lang-python=""ipv4_fragment_offset"" pulumi-lang-yaml=""ipv4FragmentOffset"" pulumi-lang-java=""ipv4FragmentOffset"">"ipv4_fragment_offset"</span> values: - "1-0x1fff"
  /// The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named <span pulumi-lang-nodejs=""ipv4FragmentOffset"" pulumi-lang-dotnet=""Ipv4FragmentOffset"" pulumi-lang-go=""ipv4FragmentOffset"" pulumi-lang-python=""ipv4_fragment_offset"" pulumi-lang-yaml=""ipv4FragmentOffset"" pulumi-lang-java=""ipv4FragmentOffset"">"ipv4_fragment_offset"</span> with a value between 1 and 0x1fff inclusive
  final List<GetRegionSecurityPolicyRuleNetworkMatch> networkMatches;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  final List<GetRegionSecurityPolicyRulePreconfiguredWafConfig>
      preconfiguredWafConfigs;

  /// If set to true, the specified action is not enforced.
  final bool preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final int priority;

  /// Must be specified if the action is <span pulumi-lang-nodejs=""rateBasedBan"" pulumi-lang-dotnet=""RateBasedBan"" pulumi-lang-go=""rateBasedBan"" pulumi-lang-python=""rate_based_ban"" pulumi-lang-yaml=""rateBasedBan"" pulumi-lang-java=""rateBasedBan"">"rate_based_ban"</span> or "throttle". Cannot be specified for any other actions.
  final List<GetRegionSecurityPolicyRuleRateLimitOption> rateLimitOptions;

  GetRegionSecurityPolicyRule({
    required this.action,
    required this.description,
    required this.matches,
    required this.networkMatches,
    required this.preconfiguredWafConfigs,
    required this.preview,
    required this.priority,
    required this.rateLimitOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['description'] = description;
    map['matches'] = Input.encodeList<GetRegionSecurityPolicyRuleMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    map['networkMatches'] = Input.encodeList<
        GetRegionSecurityPolicyRuleNetworkMatch,
        Map<String, dynamic>>(networkMatches, (value) => value.toMap());
    map['preconfiguredWafConfigs'] = Input.encodeList<
            GetRegionSecurityPolicyRulePreconfiguredWafConfig,
            Map<String, dynamic>>(
        preconfiguredWafConfigs, (value) => value.toMap());
    map['preview'] = preview;
    map['priority'] = priority;
    map['rateLimitOptions'] = Input.encodeList<
        GetRegionSecurityPolicyRuleRateLimitOption,
        Map<String, dynamic>>(rateLimitOptions, (value) => value.toMap());
    return map;
  }

  factory GetRegionSecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRule(
      action: map['action'] as String,
      description: map['description'] as String,
      matches: Input.decodeList<GetRegionSecurityPolicyRuleMatch>(
          map['matches'],
          (value) => GetRegionSecurityPolicyRuleMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      networkMatches: Input.decodeList<GetRegionSecurityPolicyRuleNetworkMatch>(
          map['networkMatches'],
          (value) => GetRegionSecurityPolicyRuleNetworkMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
      preconfiguredWafConfigs:
          Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfig>(
              map['preconfiguredWafConfigs'],
              (value) =>
                  GetRegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(
                      (value as Map).cast<String, dynamic>())),
      preview: map['preview'] as bool,
      priority: map['priority'] as int,
      rateLimitOptions:
          Input.decodeList<GetRegionSecurityPolicyRuleRateLimitOption>(
              map['rateLimitOptions'],
              (value) => GetRegionSecurityPolicyRuleRateLimitOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
