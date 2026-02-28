// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_rule_rate_limit_option_ban_threshold.dart';
import 'get_security_policy_rule_rate_limit_option_enforce_on_key_config.dart';
import 'get_security_policy_rule_rate_limit_option_exceed_redirect_option.dart';
import 'get_security_policy_rule_rate_limit_option_rate_limit_threshold.dart';

class GetSecurityPolicyRuleRateLimitOption {
  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  final int banDurationSec;

  /// Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'banDurationSec' when the number of requests that exceed the 'rateLimitThreshold' also exceed this 'banThreshold'.
  final List<GetSecurityPolicyRuleRateLimitOptionBanThreshold> banThresholds;

  /// Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  final String conformAction;

  /// Determines the key to enforce the rateLimitThreshold on
  final String enforceOnKey;

  /// Enforce On Key Config of this security policy
  final List<GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig>
      enforceOnKeyConfigs;

  /// Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  final String enforceOnKeyName;

  /// Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are "deny()" where valid values for status are 403, 404, 429, and 502, and "redirect" where the redirect parameters come from exceedRedirectOptions below.
  final String exceedAction;

  /// Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect.
  final List<GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption>
      exceedRedirectOptions;

  /// Threshold at which to begin ratelimiting.
  final List<GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold>
      rateLimitThresholds;

  /// Creates a new [GetSecurityPolicyRuleRateLimitOption].
  /// [banDurationSec] Can only be specified if the action for the rule is "rate_based_ban". If specified, determines the time (in seconds) the traffic will continue to be banned by the rate limit after the rate falls below the threshold.
  /// [banThresholds] Can only be specified if the action for the rule is "rate_based_ban". If specified, the key will be banned for the configured 'banDurationSec' when the number of requests that exceed the 'rateLimitThreshold' also exceed this 'banThreshold'.
  /// [conformAction] Action to take for requests that are under the configured rate limit threshold. Valid option is "allow" only.
  /// [enforceOnKey] Determines the key to enforce the rateLimitThreshold on
  /// [enforceOnKeyConfigs] Enforce On Key Config of this security policy
  /// [enforceOnKeyName] Rate limit key name applicable only for the following key types: HTTP_HEADER -- Name of the HTTP header whose value is taken as the key value. HTTP_COOKIE -- Name of the HTTP cookie whose value is taken as the key value.
  /// [exceedAction] Action to take for requests that are above the configured rate limit threshold, to either deny with a specified HTTP response code, or redirect to a different endpoint. Valid options are "deny()" where valid values for status are 403, 404, 429, and 502, and "redirect" where the redirect parameters come from exceedRedirectOptions below.
  /// [exceedRedirectOptions] Parameters defining the redirect action that is used as the exceed action. Cannot be specified if the exceed action is not redirect.
  /// [rateLimitThresholds] Threshold at which to begin ratelimiting.
  GetSecurityPolicyRuleRateLimitOption({
    required this.banDurationSec,
    required this.banThresholds,
    required this.conformAction,
    required this.enforceOnKey,
    required this.enforceOnKeyConfigs,
    required this.enforceOnKeyName,
    required this.exceedAction,
    required this.exceedRedirectOptions,
    required this.rateLimitThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['banDurationSec'] = banDurationSec;
    map['banThresholds'] = pulumi.Input.encodeList<
        GetSecurityPolicyRuleRateLimitOptionBanThreshold,
        Map<String, dynamic>>(banThresholds, (value) => value.toMap());
    map['conformAction'] = conformAction;
    map['enforceOnKey'] = enforceOnKey;
    map['enforceOnKeyConfigs'] = pulumi.Input.encodeList<
        GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig,
        Map<String, dynamic>>(enforceOnKeyConfigs, (value) => value.toMap());
    map['enforceOnKeyName'] = enforceOnKeyName;
    map['exceedAction'] = exceedAction;
    map['exceedRedirectOptions'] = pulumi.Input.encodeList<
        GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption,
        Map<String, dynamic>>(exceedRedirectOptions, (value) => value.toMap());
    map['rateLimitThresholds'] = pulumi.Input.encodeList<
        GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold,
        Map<String, dynamic>>(rateLimitThresholds, (value) => value.toMap());
    return map;
  }

  factory GetSecurityPolicyRuleRateLimitOption.fromMap(
      Map<String, dynamic> map) {
    return GetSecurityPolicyRuleRateLimitOption(
      banDurationSec: map['banDurationSec'] as int,
      banThresholds: pulumi.Input.decodeList<
              GetSecurityPolicyRuleRateLimitOptionBanThreshold>(
          map['banThresholds'],
          (value) => GetSecurityPolicyRuleRateLimitOptionBanThreshold.fromMap(
              (value as Map).cast<String, dynamic>())),
      conformAction: map['conformAction'] as String,
      enforceOnKey: map['enforceOnKey'] as String,
      enforceOnKeyConfigs: pulumi.Input.decodeList<
              GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig>(
          map['enforceOnKeyConfigs'],
          (value) =>
              GetSecurityPolicyRuleRateLimitOptionEnforceOnKeyConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      enforceOnKeyName: map['enforceOnKeyName'] as String,
      exceedAction: map['exceedAction'] as String,
      exceedRedirectOptions: pulumi.Input.decodeList<
              GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption>(
          map['exceedRedirectOptions'],
          (value) =>
              GetSecurityPolicyRuleRateLimitOptionExceedRedirectOption.fromMap(
                  (value as Map).cast<String, dynamic>())),
      rateLimitThresholds: pulumi.Input.decodeList<
              GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold>(
          map['rateLimitThresholds'],
          (value) =>
              GetSecurityPolicyRuleRateLimitOptionRateLimitThreshold.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
