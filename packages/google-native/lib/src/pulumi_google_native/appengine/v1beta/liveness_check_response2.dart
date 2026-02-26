// ignore_for_file: unused_element, unnecessary_cast

/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
class LivenessCheckResponse2 {
  /// Interval between health checks.
  final String checkInterval;

  /// Number of consecutive failed checks required before considering the VM unhealthy.
  final int failureThreshold;

  /// Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  final String host;

  /// The initial delay before starting to execute the checks.
  final String initialDelay;

  /// The request path.
  final String path;

  /// Number of consecutive successful checks required before considering the VM healthy.
  final int successThreshold;

  /// Time before the check is considered failed.
  final String timeout;

  LivenessCheckResponse2({
    required this.checkInterval,
    required this.failureThreshold,
    required this.host,
    required this.initialDelay,
    required this.path,
    required this.successThreshold,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkInterval'] = checkInterval;
    map['failureThreshold'] = failureThreshold;
    map['host'] = host;
    map['initialDelay'] = initialDelay;
    map['path'] = path;
    map['successThreshold'] = successThreshold;
    map['timeout'] = timeout;
    return map;
  }

  factory LivenessCheckResponse2.fromMap(Map<String, dynamic> map) {
    return LivenessCheckResponse2(
      checkInterval: map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] as int,
      host: map['host'] as String,
      initialDelay: map['initialDelay'] as String,
      path: map['path'] as String,
      successThreshold: map['successThreshold'] as int,
      timeout: map['timeout'] as String,
    );
  }
}
