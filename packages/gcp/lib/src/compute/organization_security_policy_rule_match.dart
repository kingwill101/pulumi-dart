// ignore_for_file: unused_element, unnecessary_cast

import 'organization_security_policy_rule_match_config.dart';

class OrganizationSecurityPolicyRuleMatch {
  /// The configuration options for matching the rule.
  /// Structure is documented below.
  final OrganizationSecurityPolicyRuleMatchConfig config;

  /// A description of the rule.
  final String? description;

  /// Preconfigured versioned expression. For organization security policy rules,
  /// the only supported type is "FIREWALL".
  /// Default value is `FIREWALL`.
  /// Possible values are: `FIREWALL`.
  final String? versionedExpr;

  /// Creates a new [OrganizationSecurityPolicyRuleMatch].
  /// [config] The configuration options for matching the rule.
  /// [description] A description of the rule.
  /// [versionedExpr] Preconfigured versioned expression. For organization security policy rules,
  OrganizationSecurityPolicyRuleMatch({
    required this.config,
    this.description,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final versionedExprValue = versionedExpr;
    if (versionedExprValue != null) {
      map['versionedExpr'] = versionedExprValue;
    }
    return map;
  }

  factory OrganizationSecurityPolicyRuleMatch.fromMap(
      Map<String, dynamic> map) {
    return OrganizationSecurityPolicyRuleMatch(
      config: OrganizationSecurityPolicyRuleMatchConfig.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      versionedExpr:
          map['versionedExpr'] == null ? null : map['versionedExpr'] as String,
    );
  }
}
