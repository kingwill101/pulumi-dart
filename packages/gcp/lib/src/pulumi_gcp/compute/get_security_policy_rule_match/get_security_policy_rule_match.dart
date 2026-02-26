// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_policy_rule_match_config/get_security_policy_rule_match_config.dart';
import '../get_security_policy_rule_match_expr/get_security_policy_rule_match_expr.dart';
import '../get_security_policy_rule_match_expr_option/get_security_policy_rule_match_expr_option.dart';

class GetSecurityPolicyRuleMatch {
  /// The configuration options available when specifying versioned_expr. This field must be specified if<span pulumi-lang-nodejs=" versionedExpr " pulumi-lang-dotnet=" VersionedExpr " pulumi-lang-go=" versionedExpr " pulumi-lang-python=" versioned_expr " pulumi-lang-yaml=" versionedExpr " pulumi-lang-java=" versionedExpr "> versioned_expr </span>is specified and cannot be specified if<span pulumi-lang-nodejs=" versionedExpr " pulumi-lang-dotnet=" VersionedExpr " pulumi-lang-go=" versionedExpr " pulumi-lang-python=" versioned_expr " pulumi-lang-yaml=" versionedExpr " pulumi-lang-java=" versionedExpr "> versioned_expr </span>is not specified.
  final List<GetSecurityPolicyRuleMatchConfig> configs;

  /// The configuration options available when specifying a user defined CEVAL expression (i.e., 'expr').
  final List<GetSecurityPolicyRuleMatchExprOption> exprOptions;

  /// User defined CEVAL expression. A CEVAL expression is used to specify match criteria such as origin.ip, source.region_code and contents in the request header.
  final List<GetSecurityPolicyRuleMatchExpr> exprs;

  /// Predefined rule expression. If this field is specified, config must also be specified. Available options:   SRC_IPS_V1: Must specify the corresponding<span pulumi-lang-nodejs=" srcIpRanges " pulumi-lang-dotnet=" SrcIpRanges " pulumi-lang-go=" srcIpRanges " pulumi-lang-python=" src_ip_ranges " pulumi-lang-yaml=" srcIpRanges " pulumi-lang-java=" srcIpRanges "> src_ip_ranges </span>field in config.
  final String versionedExpr;

  GetSecurityPolicyRuleMatch({
    required this.configs,
    required this.exprOptions,
    required this.exprs,
    required this.versionedExpr,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configs'] = Input.encodeList<GetSecurityPolicyRuleMatchConfig,
        Map<String, dynamic>>(configs, (value) => value.toMap());
    map['exprOptions'] = Input.encodeList<GetSecurityPolicyRuleMatchExprOption,
        Map<String, dynamic>>(exprOptions, (value) => value.toMap());
    map['exprs'] =
        Input.encodeList<GetSecurityPolicyRuleMatchExpr, Map<String, dynamic>>(
            exprs, (value) => value.toMap());
    map['versionedExpr'] = versionedExpr;
    return map;
  }

  factory GetSecurityPolicyRuleMatch.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleMatch(
      configs: Input.decodeList<GetSecurityPolicyRuleMatchConfig>(
          map['configs'],
          (value) => GetSecurityPolicyRuleMatchConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      exprOptions: Input.decodeList<GetSecurityPolicyRuleMatchExprOption>(
          map['exprOptions'],
          (value) => GetSecurityPolicyRuleMatchExprOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      exprs: Input.decodeList<GetSecurityPolicyRuleMatchExpr>(
          map['exprs'],
          (value) => GetSecurityPolicyRuleMatchExpr.fromMap(
              (value as Map).cast<String, dynamic>())),
      versionedExpr: map['versionedExpr'] as String,
    );
  }
}
