// ignore_for_file: unused_element, unnecessary_cast


class V3FunctionCustomRuntimeConfigHealthCheckConfig {
  final int? failureThreshold;
  final String? httpGetUrl;
  final int? initialDelaySeconds;
  final int? periodSeconds;
  final int? successThreshold;
  final int? timeoutSeconds;

  /// Creates a new [V3FunctionCustomRuntimeConfigHealthCheckConfig].
  /// [failureThreshold] Optional.
  /// [httpGetUrl] Optional.
  /// [initialDelaySeconds] Optional.
  /// [periodSeconds] Optional.
  /// [successThreshold] Optional.
  /// [timeoutSeconds] Optional.
  V3FunctionCustomRuntimeConfigHealthCheckConfig({
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

  factory V3FunctionCustomRuntimeConfigHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return V3FunctionCustomRuntimeConfigHealthCheckConfig(
      failureThreshold: map['failureThreshold'] == null ? null : map['failureThreshold'] as int,
      httpGetUrl: map['httpGetUrl'] == null ? null : map['httpGetUrl'] as String,
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : map['initialDelaySeconds'] as int,
      periodSeconds: map['periodSeconds'] == null ? null : map['periodSeconds'] as int,
      successThreshold: map['successThreshold'] == null ? null : map['successThreshold'] as int,
      timeoutSeconds: map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
    );
  }
}

