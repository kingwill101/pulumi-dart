// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_rate_limit_options_enforce_on_key_config_response_compute_v1.dart';
import 'security_policy_rule_rate_limit_options_threshold_response_compute_v1.dart';
import 'security_policy_rule_redirect_options_response_compute_v1.dart';

class SecurityPolicyRuleRateLimitOptionsResponseComputeV1 {
  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  final int banDurationSec;

  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'ban_duration_sec' when the number of requests that exceed the 'rate_limit_threshold' also exceed this 'ban_threshold'.
  final SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1
      banThreshold;

  /// Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  final String conformAction;

  /// Determines the key to enforce the rate_limit_threshold on. Possible values are: - ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured. - IP: The source IP address of the request is the key. Each IP has this limit enforced separately. - HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL. - XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP. - HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL. - HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes. - SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session. - REGION_CODE: The country/region from which the request originates.
  final String enforceOnKey;

  /// If specified, any combination of values of enforce_on_key_type/enforce_on_key_name is treated as the key on which ratelimit threshold/action is enforced. You can specify up to 3 enforce_on_key_configs. If enforce_on_key_configs is specified, enforce_on_key must not be specified.
  final List<
          SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponseComputeV1>
      enforceOnKeyConfigs;

  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final String enforceOnKeyName;

  /// Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are `deny(STATUS)`, where valid values for `STATUS` are 403, 404, 429, and 502, and `redirect`, where the redirect parameters come from `exceedRedirectOptions` below. The `redirect` action is only supported in Global Security Policies of type CLOUD_ARMOR.
  final String exceedAction;

  /// Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  final SecurityPolicyRuleRedirectOptionsResponseComputeV1
      exceedRedirectOptions;

  /// Threshold at which to begin ratelimiting.
  final SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1
      rateLimitThreshold;

  SecurityPolicyRuleRateLimitOptionsResponseComputeV1({
    required this.banDurationSec,
    required this.banThreshold,
    required this.conformAction,
    required this.enforceOnKey,
    required this.enforceOnKeyConfigs,
    required this.enforceOnKeyName,
    required this.exceedAction,
    required this.exceedRedirectOptions,
    required this.rateLimitThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['banDurationSec'] = banDurationSec;
    map['banThreshold'] = banThreshold.toMap();
    map['conformAction'] = conformAction;
    map['enforceOnKey'] = enforceOnKey;
    map['enforceOnKeyConfigs'] = pulumi.Input.encodeList<
        SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponseComputeV1,
        Map<String, dynamic>>(enforceOnKeyConfigs, (value) => value.toMap());
    map['enforceOnKeyName'] = enforceOnKeyName;
    map['exceedAction'] = exceedAction;
    map['exceedRedirectOptions'] = exceedRedirectOptions.toMap();
    map['rateLimitThreshold'] = rateLimitThreshold.toMap();
    return map;
  }

  factory SecurityPolicyRuleRateLimitOptionsResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptionsResponseComputeV1(
      banDurationSec: map['banDurationSec'] as int,
      banThreshold:
          SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1.fromMap(
              (map['banThreshold'] as Map).cast<String, dynamic>()),
      conformAction: map['conformAction'] as String,
      enforceOnKey: map['enforceOnKey'] as String,
      enforceOnKeyConfigs: pulumi.Input.decodeList<
              SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponseComputeV1>(
          map['enforceOnKeyConfigs'],
          (value) =>
              SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigResponseComputeV1
                  .fromMap((value as Map).cast<String, dynamic>())),
      enforceOnKeyName: map['enforceOnKeyName'] as String,
      exceedAction: map['exceedAction'] as String,
      exceedRedirectOptions:
          SecurityPolicyRuleRedirectOptionsResponseComputeV1.fromMap(
              (map['exceedRedirectOptions'] as Map).cast<String, dynamic>()),
      rateLimitThreshold:
          SecurityPolicyRuleRateLimitOptionsThresholdResponseComputeV1.fromMap(
              (map['rateLimitThreshold'] as Map).cast<String, dynamic>()),
    );
  }
}
