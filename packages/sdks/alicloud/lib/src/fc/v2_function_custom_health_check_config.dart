// ignore_for_file: unused_element, unnecessary_cast


class V2FunctionCustomHealthCheckConfig {
  /// The threshold for the number of health check failures. The system considers the check failed after the health check fails.
  final int? failureThreshold;
  /// Container custom health check URL address.
  final String? httpGetUrl;
  /// Delay from container startup to initiation of health check.
  final int? initialDelaySeconds;
  /// Health check cycle.
  final int? periodSeconds;
  /// The threshold for the number of successful health checks. After the health check is reached, the system considers the check successful.
  final int? successThreshold;
  /// Health check timeout.
  final int? timeoutSeconds;

  /// Creates a new [V2FunctionCustomHealthCheckConfig].
  /// [failureThreshold] The threshold for the number of health check failures. The system considers the check failed after the health check fails.
  /// [httpGetUrl] Container custom health check URL address.
  /// [initialDelaySeconds] Delay from container startup to initiation of health check.
  /// [periodSeconds] Health check cycle.
  /// [successThreshold] The threshold for the number of successful health checks. After the health check is reached, the system considers the check successful.
  /// [timeoutSeconds] Health check timeout.
  V2FunctionCustomHealthCheckConfig({
    this.failureThreshold,
    this.httpGetUrl,
    this.initialDelaySeconds,
    this.periodSeconds,
    this.successThreshold,
    this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': ?failureThreshold,
      'httpGetUrl': ?httpGetUrl,
      'initialDelaySeconds': ?initialDelaySeconds,
      'periodSeconds': ?periodSeconds,
      'successThreshold': ?successThreshold,
      'timeoutSeconds': ?timeoutSeconds,
    };
  }

  factory V2FunctionCustomHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return V2FunctionCustomHealthCheckConfig(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGetUrl: map['httpGetUrl'] == null ? null : map['httpGetUrl'] as String,
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

