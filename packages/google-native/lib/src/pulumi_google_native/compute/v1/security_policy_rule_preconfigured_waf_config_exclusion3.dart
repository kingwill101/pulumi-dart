// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_field_params3.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusion3 {
  /// A list of request cookie names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>?
      requestCookiesToExclude;

  /// A list of request header names whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>?
      requestHeadersToExclude;

  /// A list of request query parameter names whose value will be excluded from inspection during preconfigured WAF evaluation. Note that the parameter can be in the query string or in the POST body.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>?
      requestQueryParamsToExclude;

  /// A list of request URIs from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>?
      requestUrisToExclude;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String>? targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String? targetRuleSet;

  SecurityPolicyRulePreconfiguredWafConfigExclusion3({
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
      map['requestCookiesToExclude'] = Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3,
              Map<String, dynamic>>(
          requestCookiesToExcludeValue, (value) => value.toMap());
    }
    final requestHeadersToExcludeValue = requestHeadersToExclude;
    if (requestHeadersToExcludeValue != null) {
      map['requestHeadersToExclude'] = Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3,
              Map<String, dynamic>>(
          requestHeadersToExcludeValue, (value) => value.toMap());
    }
    final requestQueryParamsToExcludeValue = requestQueryParamsToExclude;
    if (requestQueryParamsToExcludeValue != null) {
      map['requestQueryParamsToExclude'] = Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3,
              Map<String, dynamic>>(
          requestQueryParamsToExcludeValue, (value) => value.toMap());
    }
    final requestUrisToExcludeValue = requestUrisToExclude;
    if (requestUrisToExcludeValue != null) {
      map['requestUrisToExclude'] = Input.encodeList<
              SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3,
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

  factory SecurityPolicyRulePreconfiguredWafConfigExclusion3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusion3(
      requestCookiesToExclude: map['requestCookiesToExclude'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>(
              map['requestCookiesToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestHeadersToExclude: map['requestHeadersToExclude'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>(
              map['requestHeadersToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParamsToExclude: map['requestQueryParamsToExclude'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>(
              map['requestQueryParamsToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3
                      .fromMap((value as Map).cast<String, dynamic>())),
      requestUrisToExclude: map['requestUrisToExclude'] == null
          ? null
          : Input.decodeList<
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3>(
              map['requestUrisToExclude'],
              (value) =>
                  SecurityPolicyRulePreconfiguredWafConfigExclusionFieldParams3
                      .fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: map['targetRuleIds'] == null
          ? null
          : (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet:
          map['targetRuleSet'] == null ? null : map['targetRuleSet'] as String,
    );
  }
}
