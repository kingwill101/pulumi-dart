// ignore_for_file: unused_element, unnecessary_cast

/// Readiness checking configuration for VM instances. Unhealthy instances are removed from traffic rotation.
class ReadinessCheckResponse2 {
  /// A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.
  final String appStartTimeout;

  /// Interval between health checks.
  final String checkInterval;

  /// Number of consecutive failed checks required before removing traffic.
  final int failureThreshold;

  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final String host;

  /// The request path.
  final String path;

  /// Number of consecutive successful checks required before receiving traffic.
  final int successThreshold;

  /// Time before the check is considered failed.
  final String timeout;

  ReadinessCheckResponse2({
    required this.appStartTimeout,
    required this.checkInterval,
    required this.failureThreshold,
    required this.host,
    required this.path,
    required this.successThreshold,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appStartTimeout'] = appStartTimeout;
    map['checkInterval'] = checkInterval;
    map['failureThreshold'] = failureThreshold;
    map['host'] = host;
    map['path'] = path;
    map['successThreshold'] = successThreshold;
    map['timeout'] = timeout;
    return map;
  }

  factory ReadinessCheckResponse2.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckResponse2(
      appStartTimeout: map['appStartTimeout'] as String,
      checkInterval: map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] as int,
      host: map['host'] as String,
      path: map['path'] as String,
      successThreshold: map['successThreshold'] as int,
      timeout: map['timeout'] as String,
    );
  }
}
