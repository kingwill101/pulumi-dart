// ignore_for_file: unused_element, unnecessary_cast

class GetLoadBalancerHealthCheck {
  final int healthyThreshold;
  final int interval;
  final String target;
  final int timeout;
  final int unhealthyThreshold;

  GetLoadBalancerHealthCheck({
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
