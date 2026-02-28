// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_response_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>
      requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>
      requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>
      requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>
      requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String> targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta].
  /// [requestCookiesToExclude] A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeadersToExclude] A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParamsToExclude] A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  /// [requestUrisToExclude] A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta({
    required this.requestCookiesToExclude,
    required this.requestHeadersToExclude,
    required this.requestQueryParamsToExclude,
    required this.requestUrisToExclude,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestCookiesToExclude'] = pulumi.Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta,
        Map<String,
            dynamic>>(requestCookiesToExclude, (value) => value.toMap());
    map['requestHeadersToExclude'] = pulumi.Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta,
        Map<String,
            dynamic>>(requestHeadersToExclude, (value) => value.toMap());
    map['requestQueryParamsToExclude'] = pulumi.Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta,
        Map<String,
            dynamic>>(requestQueryParamsToExclude, (value) => value.toMap());
    map['requestUrisToExclude'] = pulumi.Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta,
        Map<String, dynamic>>(requestUrisToExclude, (value) => value.toMap());
    map['targetRuleIds'] = targetRuleIds;
    map['targetRuleSet'] = targetRuleSet;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionResponseComputeBeta(
      requestCookiesToExclude: pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>(
          map['requestCookiesToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToExclude: pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>(
          map['requestHeadersToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParamsToExclude: pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>(
          map['requestQueryParamsToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestUrisToExclude: pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta>(
          map['requestUrisToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponseComputeBeta
                  .fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}
