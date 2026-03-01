// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_compute_beta.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
  >?
  requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
  >?
  requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
  >?
  requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<
    SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
  >?
  requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String>? targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String? targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta].
  /// [requestCookiesToExclude] A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeadersToExclude] A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParamsToExclude] A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  /// [requestUrisToExclude] A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta({
    this.requestCookiesToExclude,
    this.requestHeadersToExclude,
    this.requestQueryParamsToExclude,
    this.requestUrisToExclude,
    this.targetRuleIds,
    this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookiesToExclude': ?requestCookiesToExclude == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta,
              Map<String, dynamic>
            >(requestCookiesToExclude!, (value) => value.toMap()),
      'requestHeadersToExclude': ?requestHeadersToExclude == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta,
              Map<String, dynamic>
            >(requestHeadersToExclude!, (value) => value.toMap()),
      'requestQueryParamsToExclude': ?requestQueryParamsToExclude == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta,
              Map<String, dynamic>
            >(requestQueryParamsToExclude!, (value) => value.toMap()),
      'requestUrisToExclude': ?requestUrisToExclude == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta,
              Map<String, dynamic>
            >(requestUrisToExclude!, (value) => value.toMap()),
      'targetRuleIds': ?targetRuleIds,
      'targetRuleSet': ?targetRuleSet,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionComputeBeta(
      requestCookiesToExclude: map['requestCookiesToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
            >(
              map['requestCookiesToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestHeadersToExclude: map['requestHeadersToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
            >(
              map['requestHeadersToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestQueryParamsToExclude: map['requestQueryParamsToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
            >(
              map['requestQueryParamsToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestUrisToExclude: map['requestUrisToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta
            >(
              map['requestUrisToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeBeta.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      targetRuleIds: map['targetRuleIds'] == null
          ? null
          : (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] == null
          ? null
          : map['targetRuleSet'] as String,
    );
  }
}
