// ignore_for_file: unused_element, unnecessary_cast

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
class LivenessCheckAppengineV1beta {
  /// Interval between health checks.
  final String? checkInterval;

  /// Number of consecutive failed checks required before considering the VM unhealthy.
  final int? failureThreshold;

  /// Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  final String? host;

  /// The initial delay before starting to execute the checks.
  final String? initialDelay;

  /// The request path.
  final String? path;

  /// Number of consecutive successful checks required before considering the VM healthy.
  final int? successThreshold;

  /// Time before the check is considered failed.
  final String? timeout;

  LivenessCheckAppengineV1beta({
    this.checkInterval,
    this.failureThreshold,
    this.host,
    this.initialDelay,
    this.path,
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
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
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

  factory LivenessCheckAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LivenessCheckAppengineV1beta(
      checkInterval:
          map['checkInterval'] == null ? null : map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] == null
          ? null
          : map['failureThreshold'] as int,
      host: map['host'] == null ? null : map['host'] as String,
      initialDelay:
          map['initialDelay'] == null ? null : map['initialDelay'] as String,
      path: map['path'] == null ? null : map['path'] as String,
      successThreshold: map['successThreshold'] == null
          ? null
          : map['successThreshold'] as int,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}
