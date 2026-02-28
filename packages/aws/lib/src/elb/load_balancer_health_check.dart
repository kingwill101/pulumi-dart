// ignore_for_file: unused_element, unnecessary_cast

class LoadBalancerHealthCheck {
  /// The number of checks before the instance is declared healthy.
  final int healthyThreshold;

  /// The interval between checks.
  final int interval;

  /// The target of the check. Valid pattern is "${PROTOCOL}:${PORT}${PATH}", where PROTOCOL
  /// values are:
  /// * `HTTP`, `HTTPS` - PORT and PATH are required
  /// * `TCP`, `SSL` - PORT is required, PATH is not supported
  final String target;

  /// The length of time before the check times out.
  final int timeout;

  /// The number of checks before the instance is declared unhealthy.
  final int unhealthyThreshold;

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
    final map = <String, dynamic>{};
    map['healthyThreshold'] = healthyThreshold;
    map['interval'] = interval;
    map['target'] = target;
    map['timeout'] = timeout;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory LoadBalancerHealthCheck.fromMap(Map<String, dynamic> map) {
    return LoadBalancerHealthCheck(
      healthyThreshold: map['healthyThreshold'] as int,
      interval: map['interval'] as int,
      target: map['target'] as String,
      timeout: map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
