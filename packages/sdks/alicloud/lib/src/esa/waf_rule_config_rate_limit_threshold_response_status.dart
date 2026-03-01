// ignore_for_file: unused_element, unnecessary_cast


class WafRuleConfigRateLimitThresholdResponseStatus {
  final int? code;
  /// The maximum number of times the specified status code can be returned.
  final int? count;
  /// The upper limit of the percentage of occurrences of the specified status code among all responses.
  final int? ratio;

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
      code: map['code'] == null ? null : map['code'] as int,
      count: map['count'] == null ? null : map['count'] as int,
      ratio: map['ratio'] == null ? null : map['ratio'] as int,
    );
  }
}

