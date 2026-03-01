// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_cooky.dart';
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_header.dart';
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_query_param.dart';
import 'region_security_policy_rule_preconfigured_waf_config_exclusion_request_uri.dart';

class RegionSecurityPolicyRulePreconfiguredWafConfigExclusion {
  /// Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final List<
    RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky
  >?
  requestCookies;

  /// Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Structure is documented below.
  final List<
    RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader
  >?
  requestHeaders;

  /// Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// Note that the parameter can be in the query string or in the POST body.
  /// Structure is documented below.
  final List<
    RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
  >?
  requestQueryParams;

  /// Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// When specifying this field, the query or fragment part should be excluded.
  /// Structure is documented below.
  final List<RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri>?
  requestUris;

  /// A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// If omitted, it refers to all the rule IDs under the WAF rule set.
  final List<String>? targetRuleIds;

  /// Target WAF rule set to apply the preconfigured WAF exclusion.
  final String targetRuleSet;

  /// Creates a new [RegionSecurityPolicyRulePreconfiguredWafConfigExclusion].
  /// [requestCookies] Request cookie whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestHeaders] Request header whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestQueryParams] Request query parameter whose value will be excluded from inspection during preconfigured WAF evaluation.
  /// [requestUris] Request URI from the request line to be excluded from inspection during preconfigured WAF evaluation.
  /// [targetRuleIds] A list of target rule IDs under the WAF rule set to apply the preconfigured WAF exclusion.
  /// [targetRuleSet] Target WAF rule set to apply the preconfigured WAF exclusion.
  RegionSecurityPolicyRulePreconfiguredWafConfigExclusion({
    this.requestCookies,
    this.requestHeaders,
    this.requestQueryParams,
    this.requestUris,
    this.targetRuleIds,
    required this.targetRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestCookies': ?requestCookies == null
          ? null
          : pulumi.Input.encodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky,
              Map<String, dynamic>
            >(requestCookies!, (value) => value.toMap()),
      'requestHeaders': ?requestHeaders == null
          ? null
          : pulumi.Input.encodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader,
              Map<String, dynamic>
            >(requestHeaders!, (value) => value.toMap()),
      'requestQueryParams': ?requestQueryParams == null
          ? null
          : pulumi.Input.encodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam,
              Map<String, dynamic>
            >(requestQueryParams!, (value) => value.toMap()),
      'requestUris': ?requestUris == null
          ? null
          : pulumi.Input.encodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri,
              Map<String, dynamic>
            >(requestUris!, (value) => value.toMap()),
      'targetRuleIds': ?targetRuleIds,
      'targetRuleSet': targetRuleSet,
    };
  }

  factory RegionSecurityPolicyRulePreconfiguredWafConfigExclusion.fromMap(
    Map<String, dynamic> map,
  ) {
    return RegionSecurityPolicyRulePreconfiguredWafConfigExclusion(
      requestCookies: map['requestCookies'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky
            >(
              map['requestCookies'],
              (value) =>
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestCooky.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestHeaders: map['requestHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader
            >(
              map['requestHeaders'],
              (value) =>
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeader.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestQueryParams: map['requestQueryParams'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam
            >(
              map['requestQueryParams'],
              (value) =>
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParam.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      requestUris: map['requestUris'] == null
          ? null
          : pulumi.Input.decodeList<
              RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri
            >(
              map['requestUris'],
              (value) =>
                  RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUri.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      targetRuleIds: map['targetRuleIds'] == null
          ? null
          : (map['targetRuleIds'] as List).cast<String>(),
      targetRuleSet: map['targetRuleSet'] as String,
    );
  }
}
