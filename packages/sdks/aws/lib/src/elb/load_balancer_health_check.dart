// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LoadBalancerHealthCheck {
  /// The number of checks before the instance is declared healthy.
  final pulumi.Input<int> healthyThreshold;
  /// The interval between checks.
  final pulumi.Input<int> interval;
  /// The target of the check. Valid pattern is "${PROTOCOL}:${PORT}${PATH}", where PROTOCOL
  /// values are:
  /// * `HTTP`, `HTTPS` - PORT and PATH are required
  /// * `TCP`, `SSL` - PORT is required, PATH is not supported
  final pulumi.Input<String> target;
  /// The length of time before the check times out.
  final pulumi.Input<int> timeout;
  /// The number of checks before the instance is declared unhealthy.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [LoadBalancerHealthCheck].
  /// [healthyThreshold] The number of checks before the instance is declared healthy.
  /// [interval] The interval between checks.
  /// [target] The target of the check. Valid pattern is "${PROTOCOL}:${PORT}${PATH}", where PROTOCOL
  /// [timeout] The length of time before the check times out.
  /// [unhealthyThreshold] The number of checks before the instance is declared unhealthy.
  LoadBalancerHealthCheck({
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

  factory LoadBalancerHealthCheck.fromMap(Map<String, dynamic> map) {
    return LoadBalancerHealthCheck(
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      interval: (map['interval'] as int).input(),
      target: (map['target'] as String).input(),
      timeout: (map['timeout'] as int).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

