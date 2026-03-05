// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DefenseRuleConfigRateLimitStatus {
  /// Required. Specifies the response code.
  final pulumi.Input<int>? code;
  /// The threshold for the number of occurrences. When the number of occurrences of the specified HTTP status code exceeds this threshold, the protection rule is triggered. Valid values: 2 to 50000. You can specify Count or Ratio. You cannot specify the two parameters at the same time.
  final pulumi.Input<int>? count;
  /// The threshold for the proportion of occurrences (percentage). When the proportion of occurrences of the specified HTTP status code exceeds this threshold, the protection rule is triggered. Valid values: 1 to 100. You can specify Count or Ratio. You cannot specify the two parameters at the same time.
  final pulumi.Input<int>? ratio;

  /// Creates a new [DefenseRuleConfigRateLimitStatus].
  /// [code] Required. Specifies the response code.
  /// [count] The threshold for the number of occurrences. When the number of occurrences of the specified HTTP status code exceeds this threshold, the protection rule is triggered. Valid values: 2 to 50000. You can specify Count or Ratio. You cannot specify the two parameters at the same time.
  /// [ratio] The threshold for the proportion of occurrences (percentage). When the proportion of occurrences of the specified HTTP status code exceeds this threshold, the protection rule is triggered. Valid values: 1 to 100. You can specify Count or Ratio. You cannot specify the two parameters at the same time.
  DefenseRuleConfigRateLimitStatus({
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

  factory DefenseRuleConfigRateLimitStatus.fromMap(Map<String, dynamic> map) {
    return DefenseRuleConfigRateLimitStatus(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ratio: (() { final guardedValue = map['ratio']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

