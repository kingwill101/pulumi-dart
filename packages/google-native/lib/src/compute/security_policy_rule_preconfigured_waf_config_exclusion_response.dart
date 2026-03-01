// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_response.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionResponse {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
  >
  requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
  >
  requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
  >
  requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
  >
  requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String> targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionResponse].
  /// [requestCookiesToExclude] A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeadersToExclude] A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParamsToExclude] A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  /// [requestUrisToExclude] A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusionResponse({
    required this.requestCookiesToExclude,
    required this.requestHeadersToExclude,
    required this.requestQueryParamsToExclude,
    required this.requestUrisToExclude,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookiesToExclude':
          pulumi.Input.encodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse,
            Map<String, dynamic>
          >(requestCookiesToExclude, (value) => value.toMap()),
      'requestHeadersToExclude':
          pulumi.Input.encodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse,
            Map<String, dynamic>
          >(requestHeadersToExclude, (value) => value.toMap()),
      'requestQueryParamsToExclude':
          pulumi.Input.encodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse,
            Map<String, dynamic>
          >(requestQueryParamsToExclude, (value) => value.toMap()),
      'requestUrisToExclude':
          pulumi.Input.encodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse,
            Map<String, dynamic>
          >(requestUrisToExclude, (value) => value.toMap()),
      'targetRuleIds': targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionResponse(
      requestCookiesToExclude:
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
          >(
            map['requestCookiesToExclude'],
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      requestHeadersToExclude:
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
          >(
            map['requestHeadersToExclude'],
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      requestQueryParamsToExclude:
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
          >(
            map['requestQueryParamsToExclude'],
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      requestUrisToExclude:
          pulumi.Input.decodeList<
            SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse
          >(
            map['requestUrisToExclude'],
            (value) =>
                SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      targetRuleIds: (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}
