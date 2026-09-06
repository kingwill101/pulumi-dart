// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_rule_response.dart';

/// The call rate limit Cognitive Services account.
class CallRateLimitResponse {
  /// The count value of Call Rate Limit.
  final pulumi.Input<double?>? count;
  /// The renewal period in seconds of Call Rate Limit.
  final pulumi.Input<double?>? renewalPeriod;
  final pulumi.Input<List<ThrottlingRuleResponse>?>? rules;

  /// Creates a new [CallRateLimitResponse].
  /// [count] The count value of Call Rate Limit.
  /// [renewalPeriod] The renewal period in seconds of Call Rate Limit.
  /// [rules] Optional.
  const CallRateLimitResponse({
    this.count,
    this.renewalPeriod,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'renewalPeriod': ?renewalPeriod,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<ThrottlingRuleResponse>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<ThrottlingRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CallRateLimitResponse.fromMap(Map<String, dynamic> map) {
    return CallRateLimitResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      renewalPeriod: (() { final guardedValue = map['renewalPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThrottlingRuleResponse>(guardedValue, (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
