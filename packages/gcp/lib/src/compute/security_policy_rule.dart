// ignore_for_file: unused_element, unnecessary_cast

import 'security_policy_rule_header_action.dart';
import 'security_policy_rule_match.dart';
import 'security_policy_rule_preconfigured_waf_config.dart';
import 'security_policy_rule_rate_limit_options.dart';
import 'security_policy_rule_redirect_options.dart';

class SecurityPolicyRule {
  /// Action to take when `match` matches the request. Valid values:
  final String action;

  /// An optional description of this rule. Max size is 64.
  final String? description;

  /// Additional actions that are performed on headers. Structure is documented below.
  final SecurityPolicyRuleHeaderAction? headerAction;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding `action` is enforced. Structure is documented below.
  final SecurityPolicyRuleMatch match;

  /// Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if `evaluatePreconfiguredWaf()` is not used, this field will have no effect. Structure is documented below.
  final SecurityPolicyRulePreconfiguredWafConfig? preconfiguredWafConfig;

  /// When set to true, the `action` specified above is not enforced.
  /// Stackdriver logs for requests that trigger a preview action are annotated as such.
  final bool? preview;

  /// An unique positive integer indicating the priority of evaluation for a rule.
  /// Rules are evaluated from highest priority (lowest numerically) to lowest priority (highest numerically) in order.
  final int priority;

  /// Must be specified if the `action` is `rate_based_ban` or `throttle`. Cannot be specified for other actions. Structure is documented below.
  final SecurityPolicyRuleRateLimitOptions? rateLimitOptions;

  /// Can be specified if the `action` is `redirect`. Cannot be specified for other actions. Structure is documented below.
  final SecurityPolicyRuleRedirectOptions? redirectOptions;

  /// Creates a new [SecurityPolicyRule].
  /// [action] Action to take when `match` matches the request. Valid values:
  /// [description] An optional description of this rule. Max size is 64.
  /// [headerAction] Additional actions that are performed on headers. Structure is documented below.
  /// [match] A match condition that incoming traffic is evaluated against.
  /// [preconfiguredWafConfig] Preconfigured WAF configuration to be applied for the rule. If the rule does not evaluate preconfigured WAF rules, i.e., if `evaluatePreconfiguredWaf()` is not used, this field will have no effect. Structure is documented below.
  /// [preview] When set to true, the `action` specified above is not enforced.
  /// [priority] An unique positive integer indicating the priority of evaluation for a rule.
  /// [rateLimitOptions] Must be specified if the `action` is `rate_based_ban` or `throttle`. Cannot be specified for other actions. Structure is documented below.
  /// [redirectOptions] Can be specified if the `action` is `redirect`. Cannot be specified for other actions. Structure is documented below.
  SecurityPolicyRule({
    required this.action,
    this.description,
    this.headerAction,
    required this.match,
    this.preconfiguredWafConfig,
    this.preview,
    required this.priority,
    this.rateLimitOptions,
    this.redirectOptions,
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
      map['headerAction'] = headerActionValue.toMap();
    }
    map['match'] = match.toMap();
    final preconfiguredWafConfigValue = preconfiguredWafConfig;
    if (preconfiguredWafConfigValue != null) {
      map['preconfiguredWafConfig'] = preconfiguredWafConfigValue.toMap();
    }
    final previewValue = preview;
    if (previewValue != null) {
      map['preview'] = previewValue;
    }
    map['priority'] = priority;
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

  factory SecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRule(
      action: map['action'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      headerAction: map['headerAction'] == null
          ? null
          : SecurityPolicyRuleHeaderAction.fromMap(
              (map['headerAction'] as Map).cast<String, dynamic>()),
      match: SecurityPolicyRuleMatch.fromMap(
          (map['match'] as Map).cast<String, dynamic>()),
      preconfiguredWafConfig: map['preconfiguredWafConfig'] == null
          ? null
          : SecurityPolicyRulePreconfiguredWafConfig.fromMap(
              (map['preconfiguredWafConfig'] as Map).cast<String, dynamic>()),
      preview: map['preview'] == null ? null : map['preview'] as bool,
      priority: map['priority'] as int,
      rateLimitOptions: map['rateLimitOptions'] == null
          ? null
          : SecurityPolicyRuleRateLimitOptions.fromMap(
              (map['rateLimitOptions'] as Map).cast<String, dynamic>()),
      redirectOptions: map['redirectOptions'] == null
          ? null
          : SecurityPolicyRuleRedirectOptions.fromMap(
              (map['redirectOptions'] as Map).cast<String, dynamic>()),
    );
  }
}
