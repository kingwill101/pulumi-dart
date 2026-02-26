// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky/get_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import '../get_security_policy_rule_preconfigured_waf_config_exclusion_request_header/get_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import '../get_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param/get_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import '../get_security_policy_rule_preconfigured_waf_config_exclusion_request_uri/get_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class GetSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>
      requestCookies;

  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  final List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>
      requestHeaders;

  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.  Note that the parameter can be in the query string or in the POST body.
  final List<
          GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>
      requestQueryParams;

  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation. When specifying this field, the query or fragment part should be excluded.
  final List<GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>
      requestUris;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion. If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String> targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  GetSecurityPolicyRulePreconfiguredWafConfigExclusion({
    required this.requestCookies,
    required this.requestHeaders,
    required this.requestQueryParams,
    required this.requestUris,
    required this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requestCookies'] = Input.encodeList<
        GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky,
        Map<String, dynamic>>(requestCookies, (value) => value.toMap());
    map['requestHeaders'] = Input.encodeList<
        GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader,
        Map<String, dynamic>>(requestHeaders, (value) => value.toMap());
    map['requestQueryParams'] = Input.encodeList<
        GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam,
        Map<String, dynamic>>(requestQueryParams, (value) => value.toMap());
    map['requestUris'] = Input.encodeList<
        GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri,
        Map<String, dynamic>>(requestUris, (value) => value.toMap());
    map['targetRuleIds'] = targetRuleIds;
    map['targetRuleSet'] = targetRuleSet;
    return map;
  }

  factory GetSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: Input.decodeList<
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky>(
          map['requestCookies'],
          (value) =>
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestHeaders: Input.decodeList<
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader>(
          map['requestHeaders'],
          (value) =>
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestQueryParams: Input.decodeList<
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam>(
          map['requestQueryParams'],
          (value) =>
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
                  .fromMap((value as Map).cast<String, dynamic>())),
      requestUris: Input.decodeList<
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>(
          map['requestUris'],
          (value) =>
              GetSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri
                  .fromMap((value as Map).cast<String, dynamic>())),
      targetRuleIds: (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}
