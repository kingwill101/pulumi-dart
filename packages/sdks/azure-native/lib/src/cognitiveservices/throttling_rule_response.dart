// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_match_pattern_response.dart';

class ThrottlingRuleResponse {
  final double? count;
  final bool? dynamicThrottlingEnabled;
  final String? key;
  final List<RequestMatchPatternResponse>? matchPatterns;
  final double? minCount;
  final double? renewalPeriod;

  /// Creates a new [ThrottlingRuleResponse].
  /// [count] Optional.
  /// [dynamicThrottlingEnabled] Optional.
  /// [key] Optional.
  /// [matchPatterns] Optional.
  /// [minCount] Optional.
  /// [renewalPeriod] Optional.
  ThrottlingRuleResponse({
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
      'matchPatterns': ?matchPatterns == null ? null : pulumi.Input.encodeList<RequestMatchPatternResponse, Map<String, dynamic>>(matchPatterns!, (value) => value.toMap()),
      'minCount': ?minCount,
      'renewalPeriod': ?renewalPeriod,
    };
  }

  factory ThrottlingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ThrottlingRuleResponse(
      count: map['count'] == null ? null : map['count'] as double,
      dynamicThrottlingEnabled: map['dynamicThrottlingEnabled'] == null ? null : map['dynamicThrottlingEnabled'] as bool,
      key: map['key'] == null ? null : map['key'] as String,
      matchPatterns: map['matchPatterns'] == null ? null : pulumi.Input.decodeList<RequestMatchPatternResponse>(map['matchPatterns'], (value) => RequestMatchPatternResponse.fromMap((value as Map).cast<String, dynamic>())),
      minCount: map['minCount'] == null ? null : map['minCount'] as double,
      renewalPeriod: map['renewalPeriod'] == null ? null : map['renewalPeriod'] as double,
    );
  }
}

