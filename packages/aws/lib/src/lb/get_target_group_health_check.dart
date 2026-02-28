// ignore_for_file: unused_element, unnecessary_cast

class GetTargetGroupHealthCheck {
  final bool enabled;
  final int healthyThreshold;
  final int interval;
  final String matcher;
  final String path;
  final String port;
  final String protocol;
  final int timeout;
  final int unhealthyThreshold;

  /// Creates a new [GetTargetGroupHealthCheck].
  /// [enabled] Required.
  /// [healthyThreshold] Required.
  /// [interval] Required.
  /// [matcher] Required.
  /// [path] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [timeout] Required.
  /// [unhealthyThreshold] Required.
  GetTargetGroupHealthCheck({
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

  factory GetTargetGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupHealthCheck(
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
