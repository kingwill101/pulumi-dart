// ignore_for_file: unused_element, unnecessary_cast

import 'expr35.dart';
import 'security_policy_rule_matcher_config2.dart';
import 'security_policy_rule_matcher_expr_options2.dart';
import 'security_policy_rule_matcher_versioned_expr2.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class SecurityPolicyRuleMatcher2 {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final SecurityPolicyRuleMatcherConfig2? config;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  final Expr35? expr;

  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  final SecurityPolicyRuleMatcherExprOptions2? exprOptions;

  /// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  final SecurityPolicyRuleMatcherVersionedExpr2? versionedExpr;

  SecurityPolicyRuleMatcher2({
    this.config,
    this.expr,
    this.exprOptions,
    this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configValue = config;
    if (configValue != null) {
      map['config'] = configValue.toMap();
    }
    final exprValue = expr;
    if (exprValue != null) {
      map['expr'] = exprValue.toMap();
    }
    final exprOptionsValue = exprOptions;
    if (exprOptionsValue != null) {
      map['exprOptions'] = exprOptionsValue.toMap();
    }
    final versionedExprValue = versionedExpr;
    if (versionedExprValue != null) {
      map['versionedExpr'] = versionedExprValue.value;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcher2.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcher2(
      config: map['config'] == null
          ? null
          : SecurityPolicyRuleMatcherConfig2.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      expr: map['expr'] == null
          ? null
          : Expr35.fromMap((map['expr'] as Map).cast<String, dynamic>()),
      exprOptions: map['exprOptions'] == null
          ? null
          : SecurityPolicyRuleMatcherExprOptions2.fromMap(
              (map['exprOptions'] as Map).cast<String, dynamic>()),
      versionedExpr: map['versionedExpr'] == null
          ? null
          : SecurityPolicyRuleMatcherVersionedExpr2.fromValue(
              map['versionedExpr'] as String),
    );
  }
}
