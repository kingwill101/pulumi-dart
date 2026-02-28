// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'get_region_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky> requestCookies;
  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader> requestHeaders;
  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Note that the parameter can be in the query string or in the POST body.
  final List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam> requestQueryParams;
  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// When specifying this field, the query or fragment part should be excluded.
  final List<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri> requestUris;
  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String> targetRuleIds;
  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  /// Creates a new [GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion({
    required this.requestCookies,
    required this.requestHeaders,
    required this.requestQueryParams,
    required this.requestUris,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookies': pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky, Map<String, dynamic>>(requestCookies, (value) => value.toMap()),
      'requestHeaders': pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader, Map<String, dynamic>>(requestHeaders, (value) => value.toMap()),
      'requestQueryParams': pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam, Map<String, dynamic>>(requestQueryParams, (value) => value.toMap()),
      'requestUris': pulumi.Input.encodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri, Map<String, dynamic>>(requestUris, (value) => value.toMap()),
      'targetRuleIds': targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>(map['requestCookies'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap((value as Map).cast<String, dynamic>())),
      requestHeaders: pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>(map['requestHeaders'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParams: pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>(map['requestQueryParams'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap((value as Map).cast<String, dynamic>())),
      requestUris: pulumi.Input.decodeList<GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>(map['requestUris'], (value) => GetRegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}

