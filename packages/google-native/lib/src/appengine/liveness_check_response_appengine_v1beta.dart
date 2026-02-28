// ignore_for_file: unused_element, unnecessary_cast


/// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
class LivenessCheckResponseAppengineV1beta {
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

  /// Creates a new [LivenessCheckResponseAppengineV1beta].
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before considering the VM unhealthy.
  /// [host] Host header to send when performing a HTTP Liveness check. Example: "myapp.appspot.com"
  /// [initialDelay] The initial delay before starting to execute the checks.
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before considering the VM healthy.
  /// [timeout] Time before the check is considered failed.
  LivenessCheckResponseAppengineV1beta({
    required this.checkInterval,
    required this.failureThreshold,
    required this.host,
    required this.initialDelay,
    required this.path,
    required this.successThreshold,
    required this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkInterval': checkInterval,
      'failureThreshold': failureThreshold,
      'host': host,
      'initialDelay': initialDelay,
      'path': path,
      'successThreshold': successThreshold,
      'timeout': timeout,
    };
  }

  factory LivenessCheckResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LivenessCheckResponseAppengineV1beta(
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

