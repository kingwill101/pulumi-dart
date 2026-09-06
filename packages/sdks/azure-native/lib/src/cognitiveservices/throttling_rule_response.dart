// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_match_pattern_response.dart';

class ThrottlingRuleResponse {
  final pulumi.Input<double?>? count;
  final pulumi.Input<bool?>? dynamicThrottlingEnabled;
  final pulumi.Input<String?>? key;
  final pulumi.Input<List<RequestMatchPatternResponse>?>? matchPatterns;
  final pulumi.Input<double?>? minCount;
  final pulumi.Input<double?>? renewalPeriod;

  /// Creates a new [ThrottlingRuleResponse].
  /// [count] Optional.
  /// [dynamicThrottlingEnabled] Optional.
  /// [key] Optional.
  /// [matchPatterns] Optional.
  /// [minCount] Optional.
  /// [renewalPeriod] Optional.
  const ThrottlingRuleResponse({
    this.count,
    this.dynamicThrottlingEnabled,
    this.key,
    this.matchPatterns,
    this.minCount,
    this.renewalPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'dynamicThrottlingEnabled': ?dynamicThrottlingEnabled,
      'key': ?key,
      'matchPatterns': ?pulumi.Input.mapOptionalInputValue<List<RequestMatchPatternResponse>, List<Map<String, dynamic>>>(matchPatterns, (value) => pulumi.Input.encodeList<RequestMatchPatternResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'minCount': ?minCount,
      'renewalPeriod': ?renewalPeriod,
    };
  }

  factory ThrottlingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingRuleResponse(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      dynamicThrottlingEnabled: (() { final guardedValue = map['dynamicThrottlingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchPatterns: (() { final guardedValue = map['matchPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RequestMatchPatternResponse>(guardedValue, (value) => RequestMatchPatternResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      renewalPeriod: (() { final guardedValue = map['renewalPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
