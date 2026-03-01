// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class SecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>? requestCookies;
  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>? requestHeaders;
  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Note that the parameter can be in the query string or in the POST body.
  /// Structure is documented below.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>? requestQueryParams;
  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// When specifying this field, the query or fragment part should be excluded.
  /// Structure is documented below.
  final List<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>? requestUris;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String>? targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  /// Creates a new [SecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  SecurityPolicyRulePreconfiguredWafConfigExclusion({
    this.requestCookies,
    this.requestHeaders,
    this.requestQueryParams,
    this.requestUris,
    this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookies': ?requestCookies == null ? null : pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky, Map<String, dynamic>>(requestCookies!, (value) => value.toMap()),
      'requestHeaders': ?requestHeaders == null ? null : pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader, Map<String, dynamic>>(requestHeaders!, (value) => value.toMap()),
      'requestQueryParams': ?requestQueryParams == null ? null : pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam, Map<String, dynamic>>(requestQueryParams!, (value) => value.toMap()),
      'requestUris': ?requestUris == null ? null : pulumi.Input.encodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri, Map<String, dynamic>>(requestUris!, (value) => value.toMap()),
      'targetRuleIds': ?targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory SecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: map['requestCookies'] == null ? null : pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>(map['requestCookies'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap((value as Map).cast<String, dynamic>())),
      requestHeaders: map['requestHeaders'] == null ? null : pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>(map['requestHeaders'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParams: map['requestQueryParams'] == null ? null : pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>(map['requestQueryParams'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap((value as Map).cast<String, dynamic>())),
      requestUris: map['requestUris'] == null ? null : pulumi.Input.decodeList<SecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>(map['requestUris'], (value) => SecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: map['targetRuleIds'] == null ? null : (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}

