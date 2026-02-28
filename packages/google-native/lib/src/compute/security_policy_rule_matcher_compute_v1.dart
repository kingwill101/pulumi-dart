// ignore_for_file: unused_element, unnecessary_cast

import 'expr_compute_v1.dart';
import 'security_policy_rule_matcher_config_compute_v1.dart';
import 'security_policy_rule_matcher_versioned_expr_compute_v1.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class SecurityPolicyRuleMatcherComputeV1 {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final SecurityPolicyRuleMatcherConfigComputeV1? config;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  final ExprComputeV1? expr;

  /// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  final SecurityPolicyRuleMatcherVersionedExprComputeV1? versionedExpr;

  /// Creates a new [SecurityPolicyRuleMatcherComputeV1].
  /// [config] The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  /// [expr] User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  /// [versionedExpr] Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  SecurityPolicyRuleMatcherComputeV1({
    this.config,
    this.expr,
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
    final versionedExprValue = versionedExpr;
    if (versionedExprValue != null) {
      map['versionedExpr'] = versionedExprValue.value;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherComputeV1(
      config: map['config'] == null
          ? null
          : SecurityPolicyRuleMatcherConfigComputeV1.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      expr: map['expr'] == null
          ? null
          : ExprComputeV1.fromMap((map['expr'] as Map).cast<String, dynamic>()),
      versionedExpr: map['versionedExpr'] == null
          ? null
          : SecurityPolicyRuleMatcherVersionedExprComputeV1.fromValue(
              map['versionedExpr'] as String),
    );
  }
}
