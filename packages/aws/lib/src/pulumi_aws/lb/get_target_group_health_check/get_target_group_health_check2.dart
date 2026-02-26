// ignore_for_file: unused_element, unnecessary_cast

class GetTargetGroupHealthCheck2 {
  final bool enabled;
  final int healthyThreshold;
  final int interval;
  final String matcher;
  final String path;
  final String port;
  final String protocol;
  final int timeout;
  final int unhealthyThreshold;

  GetTargetGroupHealthCheck2({
    required this.enabled,
    required this.healthyThreshold,
    required this.interval,
    required this.matcher,
    required this.path,
    required this.port,
    required this.protocol,
    required this.timeout,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['healthyThreshold'] = healthyThreshold;
    map['interval'] = interval;
    map['matcher'] = matcher;
    map['path'] = path;
    map['port'] = port;
    map['protocol'] = protocol;
    map['timeout'] = timeout;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory GetTargetGroupHealthCheck2.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupHealthCheck2(
      enabled: map['enabled'] as bool,
      healthyThreshold: map['healthyThreshold'] as int,
      interval: map['interval'] as int,
      matcher: map['matcher'] as String,
      path: map['path'] as String,
      port: map['port'] as String,
      protocol: map['protocol'] as String,
      timeout: map['timeout'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
