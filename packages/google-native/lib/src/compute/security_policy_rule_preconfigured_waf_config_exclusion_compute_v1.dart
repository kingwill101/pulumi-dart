// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params_compute_v1.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1 {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>?
      requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>?
      requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>?
      requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>?
      requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String>? targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String? targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1].
  /// [requestCookiesToExclude] A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeadersToExclude] A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParamsToExclude] A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  /// [requestUrisToExclude] A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1({
    this.requestCookiesToExclude,
    this.requestHeadersToExclude,
    this.requestQueryParamsToExclude,
    this.requestUrisToExclude,
    this.targetRuleIds,
    this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requestCookiesToExcludeValue = requestCookiesToExclude;
    if (requestCookiesToExcludeValue != null) {
      map['requestCookiesToExclude'] = pulumi.Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1,
          Map<String,
              dynamic>>(requestCookiesToExcludeValue, (value) => value.toMap());
    }
    final requestHeadersToExcludeValue = requestHeadersToExclude;
    if (requestHeadersToExcludeValue != null) {
      map['requestHeadersToExclude'] = pulumi.Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1,
          Map<String,
              dynamic>>(requestHeadersToExcludeValue, (value) => value.toMap());
    }
    final requestQueryParamsToExcludeValue = requestQueryParamsToExclude;
    if (requestQueryParamsToExcludeValue != null) {
      map['requestQueryParamsToExclude'] = pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1,
              Map<String, dynamic>>(
          requestQueryParamsToExcludeValue, (value) => value.toMap());
    }
    final requestUrisToExcludeValue = requestUrisToExclude;
    if (requestUrisToExcludeValue != null) {
      map['requestUrisToExclude'] = pulumi.Input.encodeList<
          SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1,
          Map<String,
              dynamic>>(requestUrisToExcludeValue, (value) => value.toMap());
    }
    final targetRuleIdsValue = targetRuleIds;
    if (targetRuleIdsValue != null) {
      map['targetRuleIds'] = targetRuleIdsValue;
    }
    final targetRuleSetValue = targetRuleSet;
    if (targetRuleSetValue != null) {
      map['targetRuleSet'] = targetRuleSetValue;
    }
    return map;
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusionComputeV1(
      requestCookiesToExclude: map['requestCookiesToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>(
              map['requestCookiesToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToExclude: map['requestHeadersToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>(
              map['requestHeadersToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParamsToExclude: map['requestQueryParamsToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>(
              map['requestQueryParamsToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestUrisToExclude: map['requestUrisToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1>(
              map['requestUrisToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParamsComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: map['targetRuleIds'] == null
          ? null
          : (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet:
          map['targetRuleSet'] == null ? null : map['targetRuleSet'] as String,
    );
  }
}
