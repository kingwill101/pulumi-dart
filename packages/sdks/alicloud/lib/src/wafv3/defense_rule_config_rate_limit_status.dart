// ignore_for_file: unused_element, unnecessary_cast


class DefenseRuleConfigRateLimitStatus {
  /// Required. Specifies the response code.
  final int? code;
  /// The threshold for the number of occurrences. When the number of occurrences of the specified HTTP status code exceeds this threshold, the protection rule is triggered. Valid values: 2 to 50000. You can specify Count or Ratio. You cannot specify the two parameters at the same time.
  final int? count;
  /// The threshold for the proportion of occurrences (percentage). When the proportion of occurrences of the specified HTTP status code exceeds this threshold, the protection rule is triggered. Valid values: 1 to 100. You can specify Count or Ratio. You cannot specify the two parameters at the same time.
  final int? ratio;

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
      code: map['code'] == null ? null : map['code'] as int,
      count: map['count'] == null ? null : map['count'] as int,
      ratio: map['ratio'] == null ? null : map['ratio'] as int,
    );
  }
}

