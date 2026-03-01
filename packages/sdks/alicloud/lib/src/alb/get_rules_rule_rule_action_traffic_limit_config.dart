// ignore_for_file: unused_element, unnecessary_cast


class GetRulesRuleRuleActionTrafficLimitConfig {
  /// The Number of requests per second.
  final int qps;

  /// Creates a new [GetRulesRuleRuleActionTrafficLimitConfig].
  /// [qps] The Number of requests per second.
  GetRulesRuleRuleActionTrafficLimitConfig({
    required this.qps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'qps': qps,
    };
  }

  factory GetRulesRuleRuleActionTrafficLimitConfig.fromMap(Map<String, dynamic> map) {
    return GetRulesRuleRuleActionTrafficLimitConfig(
      qps: map['qps'] as int,
    );
  }
}

