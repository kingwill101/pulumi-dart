// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>?
      requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>?
      requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>?
      requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>?
      requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String>? targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String? targetRuleSet;

  SecurityPolicyRulePreconfiguredWafConfigExclusion({
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
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams,
              Map<String, dynamic>>(
          requestCookiesToExcludeValue, (value) => value.toMap());
    }
    final requestHeadersToExcludeValue = requestHeadersToExclude;
    if (requestHeadersToExcludeValue != null) {
      map['requestHeadersToExclude'] = pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams,
              Map<String, dynamic>>(
          requestHeadersToExcludeValue, (value) => value.toMap());
    }
    final requestQueryParamsToExcludeValue = requestQueryParamsToExclude;
    if (requestQueryParamsToExcludeValue != null) {
      map['requestQueryParamsToExclude'] = pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams,
              Map<String, dynamic>>(
          requestQueryParamsToExcludeValue, (value) => value.toMap());
    }
    final requestUrisToExcludeValue = requestUrisToExclude;
    if (requestUrisToExcludeValue != null) {
      map['requestUrisToExclude'] = pulumi.Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams,
              Map<String, dynamic>>(
          requestUrisToExcludeValue, (value) => value.toMap());
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

  factory SecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookiesToExclude: map['requestCookiesToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(
              map['requestCookiesToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToExclude: map['requestHeadersToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(
              map['requestHeadersToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParamsToExclude: map['requestQueryParamsToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(
              map['requestQueryParamsToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestUrisToExclude: map['requestUrisToExclude'] == null
          ? null
          : pulumi.Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams>(
              map['requestUrisToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams
                      .fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: map['targetRuleIds'] == null
          ? null
          : (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet:
          map['targetRuleSet'] == null ? null : map['targetRuleSet'] as String,
    );
  }
}
