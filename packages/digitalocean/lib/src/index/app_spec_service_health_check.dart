// ignore_for_file: unused_element, unnecessary_cast


class AppSpecServiceHealthCheck {
  /// The number of failed health checks before considered unhealthy.
  final int? failureThreshold;
  /// The route path used for the HTTP health check ping.
  final String? httpPath;
  /// The number of seconds to wait before beginning health checks.
  final int? initialDelaySeconds;
  /// The number of seconds to wait between health checks.
  final int? periodSeconds;
  /// The health check will be performed on this port instead of component's HTTP port.
  final int? port;
  /// The number of successful health checks before considered healthy.
  final int? successThreshold;
  /// The number of seconds after which the check times out.
  final int? timeoutSeconds;

  /// Creates a new [AppSpecServiceHealthCheck].
  /// [failureThreshold] The number of failed health checks before considered unhealthy.
  /// [httpPath] The route path used for the HTTP health check ping.
  /// [initialDelaySeconds] The number of seconds to wait before beginning health checks.
  /// [periodSeconds] The number of seconds to wait between health checks.
  /// [port] The health check will be performed on this port instead of component's HTTP port.
  /// [successThreshold] The number of successful health checks before considered healthy.
  /// [timeoutSeconds] The number of seconds after which the check times out.
  AppSpecServiceHealthCheck({
    this.failureThreshold,
    this.httpPath,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.port,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'httpPath': ?httpPath,
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'port': ?port,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory AppSpecServiceHealthCheck.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceHealthCheck(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpPath: map['httpPath'] == null ? null : map['httpPath'] as String,
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      port: map['port'] == null ? null : map['port'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

