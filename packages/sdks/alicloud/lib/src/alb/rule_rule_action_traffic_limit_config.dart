// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleRuleActionTrafficLimitConfig {
  /// The number of requests per second for a single IP address. Value range: 1~1000000. Note: If the QPS parameter is also configured, the value of the PerIpQps parameter must be smaller than the value of the QPS parameter.
  final pulumi.Input<int>? perIpQps;
  /// The Number of requests per second. Valid values: `1` to `100000`.
  final pulumi.Input<int>? qps;

  /// Creates a new [RuleRuleActionTrafficLimitConfig].
  /// [perIpQps] The number of requests per second for a single IP address. Value range: 1~1000000. Note: If the QPS parameter is also configured, the value of the PerIpQps parameter must be smaller than the value of the QPS parameter.
  /// [qps] The Number of requests per second. Valid values: `1` to `100000`.
  RuleRuleActionTrafficLimitConfig({
    this.perIpQps,
    this.qps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'perIpQps': ?perIpQps,
      'qps': ?qps,
    };
  }

  factory RuleRuleActionTrafficLimitConfig.fromMap(Map<String, dynamic> map) {
    return RuleRuleActionTrafficLimitConfig(
      perIpQps: map['perIpQps'] == null ? null : (map['perIpQps']! as int).input(),
      qps: map['qps'] == null ? null : (map['qps']! as int).input(),
    );
  }
}

