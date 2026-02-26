// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionLivenessCheck {
  /// Interval between health checks.
  final String? checkInterval;

  /// Number of consecutive failed checks required before considering the VM unhealthy. Default: 4.
  final double? failureThreshold;

  /// Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  final String? host;

  /// The initial delay before starting to execute the checks. Default: "300s"
  final String? initialDelay;

  /// The request path.
  final String path;

  /// Number of consecutive successful checks required before considering the VM healthy. Default: 2.
  final double? successThreshold;

  /// Time before the check is considered failed. Default: "4s"
  final String? timeout;

  FlexibleAppVersionLivenessCheck({
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.initialDelay,
    required this.path,
    this.successThreshold,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final initialDelayValue = initialDelay;
    if (initialDelayValue != null) {
      map['initialDelay'] = initialDelayValue;
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

  factory FlexibleAppVersionLivenessCheck.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionLivenessCheck(
      checkInterval:
          map['checkInterval'] == null ? null : map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as double,
      host: map['host'] == null ? null : map['host'] as String,
      initialDelay:
          map['initialDelay'] == null ? null : map['initialDelay'] as String,
      path: map['path'] as String,
      successThreshold: map['successThreshold'] == null
          ? null
          : map['successThreshold'] as double,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
