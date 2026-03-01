// ignore_for_file: unused_element, unnecessary_cast

/// Readiness checking configuration for VM instances. Unhealthy instances are removed from traffic rotation.
class ReadinessCheckAppengineV1beta {
  /// A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.
  final String? appStartTimeout;

  /// Interval between health checks.
  final String? checkInterval;

  /// Number of consecutive failed checks required before removing traffic.
  final int? failureThreshold;

  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final String? host;

  /// The request path.
  final String? path;

  /// Number of consecutive successful checks required before receiving traffic.
  final int? successThreshold;

  /// Time before the check is considered failed.
  final String? timeout;

  /// Creates a new [ReadinessCheckAppengineV1beta].
  /// [appStartTimeout] A maximum time limit on application initialization, measured from moment the application successfully replies to a healthcheck until it is ready to serve traffic.
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before removing traffic.
  /// [host] Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before receiving traffic.
  /// [timeout] Time before the check is considered failed.
  ReadinessCheckAppengineV1beta({
    this.appStartTimeout,
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.path,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appStartTimeout': ?appStartTimeout,
      'checkInterval': ?checkInterval,
      'failureThreshold': ?failureThreshold,
      'host': ?host,
      'path': ?path,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory ReadinessCheckAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return ReadinessCheckAppengineV1beta(
      appStartTimeout: map['appStartTimeout'] == null
          ? null
          : map['appStartTimeout'] as String,
      checkInterval: map['checkInterval'] == null
          ? null
          : map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      host: map['host'] == null ? null : map['host'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      successThreshold: map['successThreshold'] == null
          ? null
          : map['successThreshold'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
