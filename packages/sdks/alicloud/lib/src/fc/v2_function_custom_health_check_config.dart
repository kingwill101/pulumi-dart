// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2FunctionCustomHealthCheckConfig {
  /// The threshold for the number of health check failures. The system considers the check failed after the health check fails.
  final pulumi.Input<int>? failureThreshold;

  /// Container custom health check URL address.
  final pulumi.Input<String>? httpGetUrl;

  /// Delay from container startup to initiation of health check.
  final pulumi.Input<int>? initialDelaySeconds;

  /// Health check cycle.
  final pulumi.Input<int>? periodSeconds;

  /// The threshold for the number of successful health checks. After the health check is reached, the system considers the check successful.
  final pulumi.Input<int>? successThreshold;

  /// Health check timeout.
  final pulumi.Input<int>? timeoutSeconds;

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
      failureThreshold: (() {
        final guardedValue = map['failureThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      httpGetUrl: (() {
        final guardedValue = map['httpGetUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      initialDelaySeconds: (() {
        final guardedValue = map['initialDelaySeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      periodSeconds: (() {
        final guardedValue = map['periodSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      successThreshold: (() {
        final guardedValue = map['successThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeoutSeconds: (() {
        final guardedValue = map['timeoutSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
