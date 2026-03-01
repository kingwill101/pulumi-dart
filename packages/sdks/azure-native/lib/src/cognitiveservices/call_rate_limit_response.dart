// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_rule_response.dart';

/// The call rate limit Cognitive Services account.
class CallRateLimitResponse {
  /// The count value of Call Rate Limit.
  final double? count;
  /// The renewal period in seconds of Call Rate Limit.
  final double? renewalPeriod;
  final List<ThrottlingRuleResponse>? rules;

  /// Creates a new [CallRateLimitResponse].
  /// [count] The count value of Call Rate Limit.
  /// [renewalPeriod] The renewal period in seconds of Call Rate Limit.
  /// [rules] Optional.
  CallRateLimitResponse({
    this.count,
    this.renewalPeriod,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'renewalPeriod': ?renewalPeriod,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<ThrottlingRuleResponse, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory CallRateLimitResponse.fromMap(Map<String, dynamic> map) {
    return CallRateLimitResponse(
      count: map['count'] == null ? null : map['count'] as double,
      renewalPeriod: map['renewalPeriod'] == null ? null : map['renewalPeriod'] as double,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<ThrottlingRuleResponse>(map['rules'], (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

