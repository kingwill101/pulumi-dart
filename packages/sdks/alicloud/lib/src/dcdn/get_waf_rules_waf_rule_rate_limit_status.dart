// ignore_for_file: unused_element, unnecessary_cast


class GetWafRulesWafRuleRateLimitStatus {
  /// The HTTP status code returned.
  final String code;
  /// The number of times that the HTTP status code that was returned.
  final int count;
  /// The percentage of HTTP status codes.
  final int ratio;

  /// Creates a new [GetWafRulesWafRuleRateLimitStatus].
  /// [code] The HTTP status code returned.
  /// [count] The number of times that the HTTP status code that was returned.
  /// [ratio] The percentage of HTTP status codes.
  GetWafRulesWafRuleRateLimitStatus({
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
      code: map['code'] as String,
      count: map['count'] as int,
      ratio: map['ratio'] as int,
    );
  }
}

