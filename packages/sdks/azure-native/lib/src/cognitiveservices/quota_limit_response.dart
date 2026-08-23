// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_rule_response.dart';

class QuotaLimitResponse {
  final pulumi.Input<double>? count;
  final pulumi.Input<double>? renewalPeriod;
  final pulumi.Input<List<ThrottlingRuleResponse>>? rules;

  /// Creates a new [QuotaLimitResponse].
  /// [count] Optional.
  /// [renewalPeriod] Optional.
  /// [rules] Optional.
  const QuotaLimitResponse({
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

  factory QuotaLimitResponse.fromMap(Map<String, dynamic> map) {
    return QuotaLimitResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      renewalPeriod: (() { final guardedValue = map['renewalPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThrottlingRuleResponse>(guardedValue, (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
