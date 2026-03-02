// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLoadBalancerHealthCheck {
  final pulumi.Input<int> healthyThreshold;
  final pulumi.Input<int> interval;
  final pulumi.Input<String> target;
  final pulumi.Input<int> timeout;
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetLoadBalancerHealthCheck].
  /// [healthyThreshold] Required.
  /// [interval] Required.
  /// [target] Required.
  /// [timeout] Required.
  /// [unhealthyThreshold] Required.
  GetLoadBalancerHealthCheck({
    required this.healthyThreshold,
    required this.interval,
    required this.target,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthyThreshold': healthyThreshold,
      'interval': interval,
      'target': target,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetLoadBalancerHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerHealthCheck(
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      interval: (map['interval'] as int).input(),
      target: (map['target'] as String).input(),
      timeout: (map['timeout'] as int).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

