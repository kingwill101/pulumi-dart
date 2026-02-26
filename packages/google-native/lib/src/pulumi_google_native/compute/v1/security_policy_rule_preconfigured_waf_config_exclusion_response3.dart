// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_response3.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3 {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>
      requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>
      requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>
      requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>
      requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String> targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3({
    required this.requestCookiesToExclude,
    required this.requestHeadersToExclude,
    required this.requestQueryParamsToExclude,
    required this.requestUrisToExclude,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestCookiesToExclude'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3,
        Map<String,
            dynamic>>(requestCookiesToExclude, (value) => value.toMap());
    map['requestHeadersToExclude'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3,
        Map<String,
            dynamic>>(requestHeadersToExclude, (value) => value.toMap());
    map['requestQueryParamsToExclude'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3,
        Map<String,
            dynamic>>(requestQueryParamsToExclude, (value) => value.toMap());
    map['requestUrisToExclude'] = Input.encodeList<
        SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3,
        Map<String, dynamic>>(requestUrisToExclude, (value) => value.toMap());
    map['targetRuleIds'] = targetRuleIds;
    map['targetRuleSet'] = targetRuleSet;
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionResponse3(
      requestCookiesToExclude: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>(
          map['requestCookiesToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToExclude: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>(
          map['requestHeadersToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParamsToExclude: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>(
          map['requestQueryParamsToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestUrisToExclude: Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3>(
          map['requestUrisToExclude'],
          (value) =>
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse3
                  .fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}
