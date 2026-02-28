// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_match.dart';
import 'region_security_policy_rule_network_match.dart';
import 'region_security_policy_rule_preconfigured_waf_config.dart';
import 'region_security_policy_rule_rate_limit_options.dart';

/// {@template pulumi_compute_region_security_policy_rule_region_security_policy_rule_args_doc}
/// The set of arguments for RegionSecurityPolicyRule.
/// {@endtemplate}
/// {@macro pulumi_compute_region_security_policy_rule_region_security_policy_rule_args_doc}
class RegionSecurityPolicyRuleArgs {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  final pulumi.Input<String> action;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleMatch>? match;

  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields').
  /// Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
  /// Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all.
  /// For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
  /// Example:
  /// networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff"
  /// The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleNetworkMatch>? networkMatch;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRulePreconfiguredWafConfig>?
      preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  final pulumi.Input<bool>? preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final pulumi.Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  final pulumi.Input<RegionSecurityPolicyRuleRateLimitOptions>?
      rateLimitOptions;

  /// The Region in which the created Region Security Policy rule should reside.
  final pulumi.Input<String> region;

  /// The name of the security policy this rule belongs to.
  final pulumi.Input<String> securityPolicy;

  /// Creates a new [RegionSecurityPolicyRuleArgs].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions:
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [match] A match condition that incoming traffic is evaluated against.
  /// [networkMatch] A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list.
  /// [project] The ID of the project in which the resource belongs.
  /// [rateLimitOptions] Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// [region] The Region in which the created Region Security Policy rule should reside.
  /// [securityPolicy] The name of the security policy this rule belongs to.
  RegionSecurityPolicyRuleArgs({
    required String action,
    String? description,
    RegionSecurityPolicyRuleMatch? match,
    RegionSecurityPolicyRuleNetworkMatch? networkMatch,
    RegionSecurityPolicyRulePreconfiguredWafConfig? preconfiguredWafConfig,
    bool? preview,
    required int priority,
    String? project,
    RegionSecurityPolicyRuleRateLimitOptions? rateLimitOptions,
    required String region,
    required String securityPolicy,
  })  : action = pulumi.Input.asInput<String>(action),
        description = pulumi.Input.asOptionalInput<String>(description),
        match =
            pulumi.Input.asOptionalInput<RegionSecurityPolicyRuleMatch>(match),
        networkMatch =
            pulumi.Input.asOptionalInput<RegionSecurityPolicyRuleNetworkMatch>(
                networkMatch),
        preconfiguredWafConfig = pulumi.Input.asOptionalInput<
                RegionSecurityPolicyRulePreconfiguredWafConfig>(
            preconfiguredWafConfig),
        preview = pulumi.Input.asOptionalInput<bool>(preview),
        priority = pulumi.Input.asInput<int>(priority),
        project = pulumi.Input.asOptionalInput<String>(project),
        rateLimitOptions = pulumi.Input.asOptionalInput<
            RegionSecurityPolicyRuleRateLimitOptions>(rateLimitOptions),
        region = pulumi.Input.asInput<String>(region),
        securityPolicy = pulumi.Input.asInput<String>(securityPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = pulumi.Input.mapOptionalInputValue<
          RegionSecurityPolicyRuleMatch,
          Map<String, dynamic>>(matchValue, (value) => value.toMap());
    }
    final networkMatchValue = networkMatch;
    if (networkMatchValue != null) {
      map['networkMatch'] = pulumi.Input.mapOptionalInputValue<
          RegionSecurityPolicyRuleNetworkMatch,
          Map<String, dynamic>>(networkMatchValue, (value) => value.toMap());
    }
    final preconfiguredWafConfigValue = preconfiguredWafConfig;
    if (preconfiguredWafConfigValue != null) {
      map['preconfiguredWafConfig'] = pulumi.Input.mapOptionalInputValue<
              RegionSecurityPolicyRulePreconfiguredWafConfig,
              Map<String, dynamic>>(
          preconfiguredWafConfigValue, (value) => value.toMap());
    }
    final previewValue = preview;
    if (previewValue != null) {
      map['preview'] = previewValue;
    }
    map['priority'] = priority;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final rateLimitOptionsValue = rateLimitOptions;
    if (rateLimitOptionsValue != null) {
      map['rateLimitOptions'] = pulumi.Input.mapOptionalInputValue<
              RegionSecurityPolicyRuleRateLimitOptions, Map<String, dynamic>>(
          rateLimitOptionsValue, (value) => value.toMap());
    }
    map['region'] = region;
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory RegionSecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleArgs(
      action: map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      match: map['match'] == null
          ? null
          : RegionSecurityPolicyRuleMatch.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      networkMatch: map['networkMatch'] == null
          ? null
          : RegionSecurityPolicyRuleNetworkMatch.fromMap(
              (map['networkMatch'] as Map).cast<String, dynamic>()),
      preconfiguredWafConfig: map['preconfiguredWafConfig'] == null
          ? null
          : RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(
              (map['preconfiguredWafConfig'] as Map).cast<String, dynamic>()),
      preview: map['preview'] == null ? null : map['preview'] as bool,
      priority: map['priority'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      rateLimitOptions: map['rateLimitOptions'] == null
          ? null
          : RegionSecurityPolicyRuleRateLimitOptions.fromMap(
              (map['rateLimitOptions'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      securityPolicy: map['securityPolicy'] as String,
    );
  }
}
