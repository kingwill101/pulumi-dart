// ignore_for_file: unused_element, unnecessary_cast

import '../security_policy_rule_match_config/security_policy_rule_match_config.dart';
import '../security_policy_rule_match_expr/security_policy_rule_match_expr.dart';
import '../security_policy_rule_match_expr_options/security_policy_rule_match_expr_options.dart';

class SecurityPolicyRuleMatch {
  /// The configuration options available when specifying versionedExpr.
  /// This field must be specified if versionedExpr is specified and cannot be specified if versionedExpr is not specified.
  /// Structure is documented below.
  final SecurityPolicyRuleMatchConfig? config;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  /// Structure is documented below.
  final SecurityPolicyRuleMatchExpr? expr;

  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  /// Structure is documented below.
  final SecurityPolicyRuleMatchExprOptions? exprOptions;

  /// Preconfigured versioned expression. If this field is specified, config must also be specified.
  /// Available preconfigured expressions along with their requirements are: SRC_IPS_V1 - must specify the corresponding srcIpRange field in config.
  /// Possible values are: `SRC_IPS_V1`.
  final String? versionedExpr;

  SecurityPolicyRuleMatch({
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
      map['versionedExpr'] = versionedExprValue;
    }
    return map;
  }

  factory SecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatch(
      config: map['config'] == null
          ? null
          : SecurityPolicyRuleMatchConfig.fromMap(
              (map['config'] as Map).cast<String, dynamic>()),
      expr: map['expr'] == null
          ? null
          : SecurityPolicyRuleMatchExpr.fromMap(
              (map['expr'] as Map).cast<String, dynamic>()),
      exprOptions: map['exprOptions'] == null
          ? null
          : SecurityPolicyRuleMatchExprOptions.fromMap(
              (map['exprOptions'] as Map).cast<String, dynamic>()),
      versionedExpr:
          map['versionedExpr'] == null ? null : map['versionedExpr'] as String,
    );
  }
}
