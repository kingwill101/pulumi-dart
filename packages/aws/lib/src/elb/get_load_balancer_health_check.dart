// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerHealthCheck {
  final int healthyThreshold;
  final int interval;
  final String target;
  final int timeout;
  final int unhealthyThreshold;

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
      healthyThreshold: map['healthyThreshold'] as int,
      interval: map['interval'] as int,
      target: map['target'] as String,
      timeout: map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

