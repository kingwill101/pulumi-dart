// ignore_for_file: unused_element, unnecessary_cast

import 'waf_rule_config_rate_limit_threshold_response_status.dart';

class WafRuleConfigRateLimitThreshold {
  /// The maximum number of distinct managed rules that can be triggered.
  final int? distinctManagedRules;
  /// The maximum number of times that managed rules can be triggered.
  final int? managedRulesBlocked;
  /// The maximum number of allowed requests within a time interval.
  final int? request;
  /// Limits on the frequency of returning specific HTTP status codes. See `response_status` below.
  final WafRuleConfigRateLimitThresholdResponseStatus? responseStatus;
  /// The maximum allowed traffic within a time interval (deprecated).
  final String? traffic;

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
      'responseStatus': ?responseStatus == null ? null : responseStatus!.toMap(),
      'traffic': ?traffic,
    };
  }

  factory WafRuleConfigRateLimitThreshold.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitThreshold(
      distinctManagedRules: map['distinctManagedRules'] == null ? null : map['distinctManagedRules'] as int,
      managedRulesBlocked: map['managedRulesBlocked'] == null ? null : map['managedRulesBlocked'] as int,
      request: map['request'] == null ? null : map['request'] as int,
      responseStatus: map['responseStatus'] == null ? null : WafRuleConfigRateLimitThresholdResponseStatus.fromMap((map['responseStatus'] as Map).cast<String, dynamic>()),
      traffic: map['traffic'] == null ? null : map['traffic'] as String,
    );
  }
}

