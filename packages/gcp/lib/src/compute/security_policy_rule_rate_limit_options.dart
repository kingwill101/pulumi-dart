// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_rate_limit_options_ban_threshold.dart';
import 'security_policy_rule_rate_limit_options_enforce_on_key_config.dart';
import 'security_policy_rule_rate_limit_options_exceed_redirect_options.dart';
import 'security_policy_rule_rate_limit_options_rate_limit_threshold.dart';

class SecurityPolicyRuleRateLimitOptions {
  /// Can only be specified if the action for the rule is "rate_based_ban".
  /// If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  final int? banDurationSec;

  /// Can only be specified if the action for the rule is "rate_based_ban".
  /// If specified, the key will be banned for the configured 'banDurationSec' when the number of requests that exceed the 'rateLimitThreshold' also exceed this 'banThreshold'.
  /// Structure is documented below.
  final SecurityPolicyRuleRateLimitOptionsBanThreshold? banThreshold;

  /// Action to take for requests that are under the configured rate limit threshold.
  /// Valid option is "allow" only.
  final String? conformAction;

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
  /// * USER_IP: The IP address of the originating client, which is resolved based on "userIpRequestHeaders" configured with the security policy. If there is no "userIpRequestHeaders" configuration or an IP address cannot be resolved from it, the key type defaults to IP.
  /// Possible values are: `ALL`, `IP`, `HTTP_HEADER`, `XFF_IP`, `HTTP_COOKIE`, `HTTP_PATH`, `SNI`, `REGION_CODE`, `TLS_JA3_FINGERPRINT`, `TLS_JA4_FINGERPRINT`, `USER_IP`.
  final String? enforceOnKey;

  /// If specified, any combination of values of enforceOnKeyType/enforceOnKeyName is treated as the key on which ratelimit threshold/action is enforced.
  /// You can specify up to 3 enforceOnKeyConfigs.
  /// If enforceOnKeyConfigs is specified, enforceOnKey must not be specified.
  /// Structure is documented below.
  final List<SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig>?
  enforceOnKeyConfigs;

  /// Rate limit key name applicable only for the following key types:
  /// HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value.
  /// HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final String? enforceOnKeyName;

  /// Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint.
  /// Valid options are deny(STATUS), where valid values for STATUS are 403, 404, 429, and 502.
  final String? exceedAction;

  /// Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  final SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions?
  exceedRedirectOptions;

  /// Threshold at which to begin ratelimiting.
  /// Structure is documented below.
  final SecurityPolicyRuleRateLimitOptionsRateLimitThreshold?
  rateLimitThreshold;

  /// Creates a new [SecurityPolicyRuleRateLimitOptions].
  /// [banDurationSec] Can only be specified if the action for the rule is "rate_based_ban".
  /// [banThreshold] Can only be specified if the action for the rule is "rate_based_ban".
  /// [conformAction] Action to take for requests that are under the configured rate limit threshold.
  /// [enforceOnKey] Determines the key to enforce the rateLimitThreshold on. Possible values are:
  /// [enforceOnKeyConfigs] If specified, any combination of values of enforceOnKeyType/enforceOnKeyName is treated as the key on which ratelimit threshold/action is enforced.
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types:
  /// [exceedAction] Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint.
  /// [exceedRedirectOptions] Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// [rateLimitThreshold] Threshold at which to begin ratelimiting.
  SecurityPolicyRuleRateLimitOptions({
    this.banDurationSec,
    this.banThreshold,
    this.conformAction,
    this.enforceOnKey,
    this.enforceOnKeyConfigs,
    this.enforceOnKeyName,
    this.exceedAction,
    this.exceedRedirectOptions,
    this.rateLimitThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'banDurationSec': ?banDurationSec,
      'banThreshold': ?banThreshold == null ? null : banThreshold!.toMap(),
      'conformAction': ?conformAction,
      'enforceOnKey': ?enforceOnKey,
      'enforceOnKeyConfigs': ?enforceOnKeyConfigs == null
          ? null
          : pulumi.Input.encodeList<
              SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig,
              Map<String, dynamic>
            >(enforceOnKeyConfigs!, (value) => value.toMap()),
      'enforceOnKeyName': ?enforceOnKeyName,
      'exceedAction': ?exceedAction,
      'exceedRedirectOptions': ?exceedRedirectOptions == null
          ? null
          : exceedRedirectOptions!.toMap(),
      'rateLimitThreshold': ?rateLimitThreshold == null
          ? null
          : rateLimitThreshold!.toMap(),
    };
  }

  factory SecurityPolicyRuleRateLimitOptions.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleRateLimitOptions(
      banDurationSec: map['banDurationSec'] == null
          ? null
          : map['banDurationSec'] as int,
      banThreshold: map['banThreshold'] == null
          ? null
          : SecurityPolicyRuleRateLimitOptionsBanThreshold.fromMap(
              (map['banThreshold'] as Map).cast<String, dynamic>(),
            ),
      conformAction: map['conformAction'] == null
          ? null
          : map['conformAction'] as String,
      enforceOnKey: map['enforceOnKey'] == null
          ? null
          : map['enforceOnKey'] as String,
      enforceOnKeyConfigs: map['enforceOnKeyConfigs'] == null
          ? null
          : pulumi.Input.decodeList<
              SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig
            >(
              map['enforceOnKeyConfigs'],
              (value) =>
                  SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfig.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      enforceOnKeyName: map['enforceOnKeyName'] == null
          ? null
          : map['enforceOnKeyName'] as String,
      exceedAction: map['exceedAction'] == null
          ? null
          : map['exceedAction'] as String,
      exceedRedirectOptions: map['exceedRedirectOptions'] == null
          ? null
          : SecurityPolicyRuleRateLimitOptionsExceedRedirectOptions.fromMap(
              (map['exceedRedirectOptions'] as Map).cast<String, dynamic>(),
            ),
      rateLimitThreshold: map['rateLimitThreshold'] == null
          ? null
          : SecurityPolicyRuleRateLimitOptionsRateLimitThreshold.fromMap(
              (map['rateLimitThreshold'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
