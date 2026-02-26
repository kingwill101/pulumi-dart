// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response35.dart';
import 'security_policy_rule_matcher_config_response2.dart';
import 'security_policy_rule_matcher_expr_options_response2.dart';

/// Represents a match condition that incoming traffic is evaluated against. Exactly one field must be specified.
class SecurityPolicyRuleMatcherResponse2 {
  /// The configuration options available when specifying versioned_expr. This field must be specified if versioned_expr is specified and cannot be specified if versioned_expr is not specified.
  final SecurityPolicyRuleMatcherConfigResponse2 config;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header. Expressions containing `evaluateThreatIntelligence` require Cloud Armor Managed Protection Plus tier and are not supported in Edge Policies nor in Regional Policies. Expressions containing `evaluatePreconfiguredExpr('sourceiplist-*')` require Cloud Armor Managed Protection Plus tier and are only supported in Global Security Policies.
  final ExprResponse35 expr;

  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  final SecurityPolicyRuleMatcherExprOptionsResponse2 exprOptions;

  /// Preconfigured versioned expression. If this field is specified, config must also be specified. Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding src_ip_range field in config.
  final String versionedExpr;

  SecurityPolicyRuleMatcherResponse2({
    required this.config,
    required this.expr,
    required this.exprOptions,
    required this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = config.toMap();
    map['expr'] = expr.toMap();
    map['exprOptions'] = exprOptions.toMap();
    map['versionedExpr'] = versionedExpr;
    return map;
  }

  factory SecurityPolicyRuleMatcherResponse2.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherResponse2(
      config: SecurityPolicyRuleMatcherConfigResponse2.fromMap(
          (map['config'] as Map).cast<String, dynamic>()),
      expr:
          ExprResponse35.fromMap((map['expr'] as Map).cast<String, dynamic>()),
      exprOptions: SecurityPolicyRuleMatcherExprOptionsResponse2.fromMap(
          (map['exprOptions'] as Map).cast<String, dynamic>()),
      versionedExpr: map['versionedExpr'] as String,
    );
  }
}
