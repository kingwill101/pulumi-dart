// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWafRulesWafRuleRateLimitStatus {
  /// The HTTP status code returned.
  final pulumi.Input<String> code;
  /// The number of times that the HTTP status code that was returned.
  final pulumi.Input<int> count;
  /// The percentage of HTTP status codes.
  final pulumi.Input<int> ratio;

  /// Creates a new [GetWafRulesWafRuleRateLimitStatus].
  /// [code] The HTTP status code returned.
  /// [count] The number of times that the HTTP status code that was returned.
  /// [ratio] The percentage of HTTP status codes.
  const GetWafRulesWafRuleRateLimitStatus({
    required this.code,
    required this.count,
    required this.ratio,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'count': count,
      'ratio': ratio,
    };
  }

  factory GetWafRulesWafRuleRateLimitStatus.fromMap(Map<String, dynamic> map) {
    return GetWafRulesWafRuleRateLimitStatus(
      code: pulumi.Input.fromValue(map['code'] as String),
      count: pulumi.Input.fromValue(map['count'] as int),
      ratio: pulumi.Input.fromValue(map['ratio'] as int),
    );
  }
}

