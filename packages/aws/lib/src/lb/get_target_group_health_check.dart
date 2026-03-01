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
    return <String, dynamic>{
      'enabled': enabled,
      'healthyThreshold': healthyThreshold,
      'interval': interval,
      'matcher': matcher,
      'path': path,
      'port': port,
      'protocol': protocol,
      'timeout': timeout,
      'unhealthyThreshold': unhealthyThreshold,
    };
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
