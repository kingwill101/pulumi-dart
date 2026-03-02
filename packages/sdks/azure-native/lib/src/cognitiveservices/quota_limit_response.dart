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
  QuotaLimitResponse({
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
      count: map['count'] == null ? null : (map['count']! as double).input(),
      renewalPeriod: map['renewalPeriod'] == null ? null : (map['renewalPeriod']! as double).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<ThrottlingRuleResponse>(map['rules']!, (value) => ThrottlingRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

