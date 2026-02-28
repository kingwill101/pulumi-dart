// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_http_header_action_compute_v1.dart';
import 'security_policy_rule_matcher_compute_v1.dart';
import 'security_policy_rule_network_matcher_compute_v1.dart';
import 'security_policy_rule_preconfigured_waf_config_compute_v1.dart';
import 'security_policy_rule_rate_limit_options_compute_v1.dart';
import 'security_policy_rule_redirect_options_compute_v1.dart';

/// Represents a rule that describes one or more match conditions along with the action to be taken when traffic matches this condition (allow or deny).
class SecurityPolicyRuleComputeV1 {
  /// The Action to perform when the rule is matched. The following are the valid actions: - allow: allow access to target. - deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for `STATUS` are 403, 404, and 502. - rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rate_limit_options to be set. - redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR. - throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rate_limit_options to be set for this.
  final String? action;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final SecurityPolicyRuleHttpHeaderActionComputeV1? headerAction;

  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  final SecurityPolicyRuleMatcherComputeV1? match;

  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced. The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields'). Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds. Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all. For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet. Example: networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff" The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive.
  final SecurityPolicyRuleNetworkMatcherComputeV1? networkMatch;

  /// Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  final SecurityPolicyRulePreconfiguredWafConfigComputeV1?
      preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  final bool? preview;

  /// An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final int? priority;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  final SecurityPolicyRuleRateLimitOptionsComputeV1? rateLimitOptions;

  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final SecurityPolicyRuleRedirectOptionsComputeV1? redirectOptions;

  /// Creates a new [SecurityPolicyRuleComputeV1].
  /// [action] The Action to perform when the rule is matched. The following are the valid actions: - allow: allow access to target. - deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for `STATUS` are 403, 404, and 502. - rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rate_limit_options to be set. - redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR. - throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rate_limit_options to be set for this.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [headerAction] Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [match] A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// [networkMatch] A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced. The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields'). Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds. Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all. For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet. Example: networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff" The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// [preview] If set to true, the specified action is not enforced.
  /// [priority] An integer indicating the priority of a rule in the list. The priority must be a positive value between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  /// [rateLimitOptions] Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// [redirectOptions] Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  SecurityPolicyRuleComputeV1({
    this.action,
    this.description,
    this.headerAction,
    this.match,
    this.networkMatch,
    this.preconfiguredWafConfig,
    this.preview,
    this.priority,
    this.rateLimitOptions,
    this.redirectOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = headerActionValue.toMap();
    }
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = matchValue.toMap();
    }
    final networkMatchValue = networkMatch;
    if (networkMatchValue != null) {
      map['networkMatch'] = networkMatchValue.toMap();
    }
    final preconfiguredWafConfigValue = preconfiguredWafConfig;
    if (preconfiguredWafConfigValue != null) {
      map['preconfiguredWafConfig'] = preconfiguredWafConfigValue.toMap();
    }
    final previewValue = preview;
    if (previewValue != null) {
      map['preview'] = previewValue;
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final rateLimitOptionsValue = rateLimitOptions;
    if (rateLimitOptionsValue != null) {
      map['rateLimitOptions'] = rateLimitOptionsValue.toMap();
    }
    final redirectOptionsValue = redirectOptions;
    if (redirectOptionsValue != null) {
      map['redirectOptions'] = redirectOptionsValue.toMap();
    }
    return map;
  }

  factory SecurityPolicyRuleComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleComputeV1(
      action: map['action'] == null ? null : map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : SecurityPolicyRuleHttpHeaderActionComputeV1.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>()),
      match: map['match'] == null
          ? null
          : SecurityPolicyRuleMatcherComputeV1.fromMap(
              (map['match'] as Map).cast<String, dynamic>()),
      networkMatch: map['networkMatch'] == null
          ? null
          : SecurityPolicyRuleNetworkMatcherComputeV1.fromMap(
              (map['networkMatch'] as Map).cast<String, dynamic>()),
      preconfiguredWafConfig: map['preconfiguredWafConfig'] == null
          ? null
          : SecurityPolicyRulePreconfiguredWafConfigComputeV1.fromMap(
              (map['preconfiguredWafConfig'] as Map).cast<String, dynamic>()),
      preview: map['preview'] == null ? null : map['preview'] as bool,
      priority: map['priority'] == null ? null : map['priority'] as int,
      rateLimitOptions: map['rateLimitOptions'] == null
          ? null
          : SecurityPolicyRuleRateLimitOptionsComputeV1.fromMap(
              (map['rateLimitOptions'] as Map).cast<String, dynamic>()),
      redirectOptions: map['redirectOptions'] == null
          ? null
          : SecurityPolicyRuleRedirectOptionsComputeV1.fromMap(
              (map['redirectOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
