// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRulesRuleRuleActionTrafficLimitConfig {
  /// The Number of requests per second.
  final pulumi.Input<int> qps;

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
      qps: pulumi.Input.fromValue(map['qps'] as int),
    );
  }
}

