// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../security_policy_rule_header_action/security_policy_rule_header_action.dart';
import '../security_policy_rule_match/security_policy_rule_match.dart';
import '../security_policy_rule_preconfigured_waf_config/security_policy_rule_preconfigured_waf_config.dart';
import '../security_policy_rule_rate_limit_options/security_policy_rule_rate_limit_options.dart';
import '../security_policy_rule_redirect_options/security_policy_rule_redirect_options.dart';

/// The set of arguments for SecurityPolicyRule.
class SecurityPolicyRuleArgs {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  final Input<String> action;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  final Input<SecurityPolicyRuleHeaderAction>? headerAction;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  final Input<SecurityPolicyRuleMatch>? match;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  final Input<SecurityPolicyRulePreconfiguredWafConfig>? preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  final Input<bool>? preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  final Input<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  final Input<SecurityPolicyRuleRateLimitOptions>? rateLimitOptions;

  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  final Input<SecurityPolicyRuleRedirectOptions>? redirectOptions;

  /// The name of the security policy this rule belongs to.
  final Input<String> securityPolicy;

  SecurityPolicyRuleArgs({
    required this.action,
    this.description,
    this.headerAction,
    this.match,
    this.preconfiguredWafConfig,
    this.preview,
    required this.priority,
    this.project,
    this.rateLimitOptions,
    this.redirectOptions,
    required this.securityPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final headerActionValue = headerAction;
    if (headerActionValue != null) {
      map['headerAction'] = Input.mapOptionalInputValue<
          SecurityPolicyRuleHeaderAction,
          Map<String, dynamic>>(headerActionValue, (value) => value.toMap());
    }
    final matchValue = match;
    if (matchValue != null) {
      map['match'] = Input.mapOptionalInputValue<SecurityPolicyRuleMatch,
          Map<String, dynamic>>(matchValue, (value) => value.toMap());
    }
    final preconfiguredWafConfigValue = preconfiguredWafConfig;
    if (preconfiguredWafConfigValue != null) {
      map['preconfiguredWafConfig'] = Input.mapOptionalInputValue<
              SecurityPolicyRulePreconfiguredWafConfig, Map<String, dynamic>>(
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
      map['rateLimitOptions'] = Input.mapOptionalInputValue<
              SecurityPolicyRuleRateLimitOptions, Map<String, dynamic>>(
          rateLimitOptionsValue, (value) => value.toMap());
    }
    final redirectOptionsValue = redirectOptions;
    if (redirectOptionsValue != null) {
      map['redirectOptions'] = Input.mapOptionalInputValue<
          SecurityPolicyRuleRedirectOptions,
          Map<String, dynamic>>(redirectOptionsValue, (value) => value.toMap());
    }
    map['securityPolicy'] = securityPolicy;
    return map;
  }

  factory SecurityPolicyRuleArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleArgs(
      action: Input.asInput<String>(map['action']),
      description: Input.asOptionalInput<String>(map['description']),
      headerAction: Input.asOptionalInput<SecurityPolicyRuleHeaderAction>(
          map['headerAction']),
      match: Input.asOptionalInput<SecurityPolicyRuleMatch>(map['match']),
      preconfiguredWafConfig:
          Input.asOptionalInput<SecurityPolicyRulePreconfiguredWafConfig>(
              map['preconfiguredWafConfig']),
      preview: Input.asOptionalInput<bool>(map['preview']),
      priority: Input.asInput<int>(map['priority']),
      project: Input.asOptionalInput<String>(map['project']),
      rateLimitOptions:
          Input.asOptionalInput<SecurityPolicyRuleRateLimitOptions>(
              map['rateLimitOptions']),
      redirectOptions: Input.asOptionalInput<SecurityPolicyRuleRedirectOptions>(
          map['redirectOptions']),
      securityPolicy: Input.asInput<String>(map['securityPolicy']),
    );
  }
}
