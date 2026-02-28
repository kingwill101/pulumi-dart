// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_security_policy_rule_rate_limit_option_ban_threshold.dart';
import 'get_region_security_policy_rule_rate_limit_option_enforce_on_key_config.dart';
import 'get_region_security_policy_rule_rate_limit_option_rate_limit_threshold.dart';

class GetRegionSecurityPolicyRuleRateLimitOption {
  /// Can only be specified if the action for the rule is "rate_based_ban".
  /// If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  final int banDurationSec;
  /// Can only be specified if the action for the rule is "rate_based_ban".
  /// If specified, the key will be banned for the configured 'banDurationSec' when the number of requests that exceed the 'rateLimitThreshold' also exceed this 'banThreshold'.
  final List<GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold> banThresholds;
  /// Action to take for requests that are under the configured rate limit threshold.
  /// Valid option is "allow" only.
  final String conformAction;
  /// Determines the key to enforce the rateLimitThreshold on. Possible values are:
  /// * ALL: A single rate limit threshold is applied to all the requests matching this rule. This is the default value if "enforceOnKey" is not configured.
  /// * IP: The source IP address of the request is the key. Each IP has this limit enforced separately.
  /// * HTTP_HEADER: The value of the HTTP header whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the header value. If no such header is present in the request, the key type defaults to ALL.
  /// * XFF_IP: The first IP address (i.e. the originating client IP address) specified in the list of IPs under X-Forwarded-For HTTP header. If no such header is present or the value is not a valid IP, the key defaults to the source IP address of the request i.e. key type IP.
  /// * HTTP_COOKIE: The value of the HTTP cookie whose name is configured under "enforceOnKeyName". The key value is truncated to the first 128 bytes of the cookie value. If no such cookie is present in the request, the key type defaults to ALL.
  /// * HTTP_PATH: The URL path of the HTTP request. The key value is truncated to the first 128 bytes.
  /// * SNI: Server name indication in the TLS session of the HTTPS request. The key value is truncated to the first 128 bytes. The key type defaults to ALL on a HTTP session.
  /// * REGION_CODE: The country/region from which the request originates.
  /// * TLS_JA3_FINGERPRINT: JA3 TLS/SSL fingerprint if the client connects using HTTPS, HTTP/2 or HTTP/3. If not available, the key type defaults to ALL.
  /// * TLS_JA4_FINGERPRINT: JA4 TLS/SSL fingerprint if the client connects using HTTPS, HTTP/2 or HTTP/3. If not available, the key type defaults to ALL.
  /// * USER_IP: The IP address of the originating client, which is resolved based on "userIpRequestHeaders" configured with the security policy. If there is no "userIpRequestHeaders" configuration or an IP address cannot be resolved from it, the key type defaults to IP. Possible values: ["ALL", "IP", "HTTP_HEADER", "XFF_IP", "HTTP_COOKIE", "HTTP_PATH", "SNI", "REGION_CODE", "TLS_JA3_FINGERPRINT", "TLS_JA4_FINGERPRINT", "USER_IP"]
  final String enforceOnKey;
  /// If specified, any combination of values of enforceOnKeyType/enforceOnKeyName is treated as the key on which ratelimit threshold/action is enforced.
  /// You can specify up to 3 enforceOnKeyConfigs.
  /// If enforceOnKeyConfigs is specified, enforceOnKey must not be specified.
  final List<GetRegionSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig> enforceOnKeyConfigs;
  /// Rate limit key name applicable only for the following key types:
  /// HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value.
  /// HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final String enforceOnKeyName;
  /// Action to take for requests that are above the configured rate limit threshold, to deny with a specified HTTP response code.
  /// Valid options are deny(STATUS), where valid values for STATUS are 403, 404, 429, and 502.
  final String exceedAction;
  /// Threshold at which to begin ratelimiting.
  final List<GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold> rateLimitThresholds;

  /// Creates a new [GetRegionSecurityPolicyRuleRateLimitOption].
  /// [banDurationSec] Can only be specified if the action for the rule is "rate_based_ban".
  /// [banThresholds] Can only be specified if the action for the rule is "rate_based_ban".
  /// [conformAction] Action to take for requests that are under the configured rate limit threshold.
  /// [enforceOnKey] Determines the key to enforce the rateLimitThreshold on. Possible values are:
  /// [enforceOnKeyConfigs] If specified, any combination of values of enforceOnKeyType/enforceOnKeyName is treated as the key on which ratelimit threshold/action is enforced.
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types:
  /// [exceedAction] Action to take for requests that are above the configured rate limit threshold, to deny with a specified HTTP response code.
  /// [rateLimitThresholds] Threshold at which to begin ratelimiting.
  GetRegionSecurityPolicyRuleRateLimitOption({
    required this.banDurationSec,
    required this.banThresholds,
    required this.conformAction,
    required this.enforceOnKey,
    required this.enforceOnKeyConfigs,
    required this.enforceOnKeyName,
    required this.exceedAction,
    required this.rateLimitThresholds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'banDurationSec': banDurationSec,
      'banThresholds': pulumi.Input.encodeList<GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold, Map<String, dynamic>>(banThresholds, (value) => value.toMap()),
      'conformAction': conformAction,
      'enforceOnKey': enforceOnKey,
      'enforceOnKeyConfigs': pulumi.Input.encodeList<GetRegionSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig, Map<String, dynamic>>(enforceOnKeyConfigs, (value) => value.toMap()),
      'enforceOnKeyName': enforceOnKeyName,
      'exceedAction': exceedAction,
      'rateLimitThresholds': pulumi.Input.encodeList<GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold, Map<String, dynamic>>(rateLimitThresholds, (value) => value.toMap()),
    };
  }

  factory GetRegionSecurityPolicyRuleRateLimitOption.fromMap(Map<String, dynamic> map) {
    return GetRegionSecurityPolicyRuleRateLimitOption(
      banDurationSec: map['banDurationSec'] as int,
      banThresholds: pulumi.Input.decodeList<GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold>(map['banThresholds'], (value) => GetRegionSecurityPolicyRuleRateLimitOptionBanThreshold.fromMap((value as Map).cast<String, dynamic>())),
      conformAction: map['conformAction'] as String,
      enforceOnKey: map['enforceOnKey'] as String,
      enforceOnKeyConfigs: pulumi.Input.decodeList<GetRegionSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig>(map['enforceOnKeyConfigs'], (value) => GetRegionSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig.fromMap((value as Map).cast<String, dynamic>())),
      enforceOnKeyName: map['enforceOnKeyName'] as String,
      exceedAction: map['exceedAction'] as String,
      rateLimitThresholds: pulumi.Input.decodeList<GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold>(map['rateLimitThresholds'], (value) => GetRegionSecurityPolicyRuleRateLimitOptionRateLimitThreshold.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

