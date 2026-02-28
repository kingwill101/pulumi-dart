// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionReadinessCheck {
  /// A maximum time limit on application initialization, measured from moment the application successfully
  /// replies to a healthcheck until it is ready to serve traffic. Default: "300s"
  final String? appStartTimeout;

  /// Interval between health checks.  Default: "5s".
  final String? checkInterval;

  /// Number of consecutive failed checks required before removing traffic. Default: 2.
  final double? failureThreshold;

  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final String? host;

  /// The request path.
  final String path;

  /// Number of consecutive successful checks required before receiving traffic. Default: 2.
  final double? successThreshold;

  /// Time before the check is considered failed. Default: "4s"
  final String? timeout;

  /// Creates a new [FlexibleAppVersionReadinessCheck].
  /// [appStartTimeout] A maximum time limit on application initialization, measured from moment the application successfully
  /// [checkInterval] Interval between health checks.  Default: "5s".
  /// [failureThreshold] Number of consecutive failed checks required before removing traffic. Default: 2.
  /// [host] Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before receiving traffic. Default: 2.
  /// [timeout] Time before the check is considered failed. Default: "4s"
  FlexibleAppVersionReadinessCheck({
    this.appStartTimeout,
    this.checkInterval,
    this.failureThreshold,
    this.host,
    required this.path,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appStartTimeoutValue = appStartTimeout;
    if (appStartTimeoutValue != null) {
      map['appStartTimeout'] = appStartTimeoutValue;
    }
    final checkIntervalValue = checkInterval;
    if (checkIntervalValue != null) {
      map['checkInterval'] = checkIntervalValue;
    }
    final failureThresholdValue = failureThreshold;
    if (failureThresholdValue != null) {
      map['failureThreshold'] = failureThresholdValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    map['path'] = path;
    final successThresholdValue = successThreshold;
    if (successThresholdValue != null) {
      map['successThreshold'] = successThresholdValue;
    }
    final timeoutValue = timeout;
    if (timeoutValue != null) {
      map['timeout'] = timeoutValue;
    }
    return map;
  }

  factory FlexibleAppVersionReadinessCheck.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionReadinessCheck(
      appStartTimeout: map['appStartTimeout'] == null
          ? null
          : map['appStartTimeout'] as String,
      checkInterval:
          map['checkInterval'] == null ? null : map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as double,
      host: map['host'] == null ? null : map['host'] as String,
      path: map['path'] as String,
      successThreshold: map['successThreshold'] == null
          ? null
          : map['successThreshold'] as double,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
