// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'waf_rule_config_rate_limit_threshold_response_status.dart';

class WafRuleConfigRateLimitThreshold {
  /// The maximum number of distinct managed rules that can be triggered.
  final pulumi.Input<int>? distinctManagedRules;

  /// The maximum number of times that managed rules can be triggered.
  final pulumi.Input<int>? managedRulesBlocked;

  /// The maximum number of allowed requests within a time interval.
  final pulumi.Input<int>? request;

  /// Limits on the frequency of returning specific HTTP status codes. See `response_status` below.
  final pulumi.Input<WafRuleConfigRateLimitThresholdResponseStatus>?
  responseStatus;

  /// The maximum allowed traffic within a time interval (deprecated).
  final pulumi.Input<String>? traffic;

  /// Creates a new [WafRuleConfigRateLimitThreshold].
  /// [distinctManagedRules] The maximum number of distinct managed rules that can be triggered.
  /// [managedRulesBlocked] The maximum number of times that managed rules can be triggered.
  /// [request] The maximum number of allowed requests within a time interval.
  /// [responseStatus] Limits on the frequency of returning specific HTTP status codes. See `response_status` below.
  /// [traffic] The maximum allowed traffic within a time interval (deprecated).
  WafRuleConfigRateLimitThreshold({
    this.distinctManagedRules,
    this.managedRulesBlocked,
    this.request,
    this.responseStatus,
    this.traffic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'distinctManagedRules': ?distinctManagedRules,
      'managedRulesBlocked': ?managedRulesBlocked,
      'request': ?request,
      'responseStatus':
          ?pulumi.Input.mapOptionalInputValue<
            WafRuleConfigRateLimitThresholdResponseStatus,
            Map<String, dynamic>
          >(responseStatus, (value) => value.toMap()),
      'traffic': ?traffic,
    };
  }

  factory WafRuleConfigRateLimitThreshold.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitThreshold(
      distinctManagedRules: (() {
        final guardedValue = map['distinctManagedRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      managedRulesBlocked: (() {
        final guardedValue = map['managedRulesBlocked'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      request: (() {
        final guardedValue = map['request'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      responseStatus: (() {
        final guardedValue = map['responseStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WafRuleConfigRateLimitThresholdResponseStatus.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      traffic: (() {
        final guardedValue = map['traffic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
