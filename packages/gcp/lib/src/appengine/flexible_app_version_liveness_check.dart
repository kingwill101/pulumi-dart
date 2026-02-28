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

  /// Creates a new [FlexibleAppVersionLivenessCheck].
  /// [checkInterval] Interval between health checks.
  /// [failureThreshold] Number of consecutive failed checks required before considering the VM unhealthy. Default: 4.
  /// [host] Host header to send when performing a HTTP Readiness check. Example: "myapp.appspot.com"
  /// [initialDelay] The initial delay before starting to execute the checks. Default: "300s"
  /// [path] The request path.
  /// [successThreshold] Number of consecutive successful checks required before considering the VM healthy. Default: 2.
  /// [timeout] Time before the check is considered failed. Default: "4s"
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
    return <String, dynamic>{
      'checkInterval': ?checkInterval,
      'failureThreshold': ?failureThreshold,
      'host': ?host,
      'initialDelay': ?initialDelay,
      'path': path,
      'successThreshold': ?successThreshold,
      'timeout': ?timeout,
    };
  }

  factory FlexibleAppVersionLivenessCheck.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionLivenessCheck(
      checkInterval: map['checkInterval'] == null ? null : map['checkInterval'] as String,
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as double,
      host: map['host'] == null ? null : map['host'] as String,
      initialDelay: map['initialDelay'] == null ? null : map['initialDelay'] as String,
      path: map['path'] as String,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as double,
      timeout: map['timeout'] == null ? null : map['timeout'] as String,
    );
  }
}

