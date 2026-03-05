// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WafRuleConfigRateLimitThresholdResponseStatus {
  final pulumi.Input<int>? code;
  /// The maximum number of times the specified status code can be returned.
  final pulumi.Input<int>? count;
  /// The upper limit of the percentage of occurrences of the specified status code among all responses.
  final pulumi.Input<int>? ratio;

  /// Creates a new [WafRuleConfigRateLimitThresholdResponseStatus].
  /// [code] Optional.
  /// [count] The maximum number of times the specified status code can be returned.
  /// [ratio] The upper limit of the percentage of occurrences of the specified status code among all responses.
  WafRuleConfigRateLimitThresholdResponseStatus({
    this.code,
    this.count,
    this.ratio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'count': ?count,
      'ratio': ?ratio,
    };
  }

  factory WafRuleConfigRateLimitThresholdResponseStatus.fromMap(Map<String, dynamic> map) {
    return WafRuleConfigRateLimitThresholdResponseStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

