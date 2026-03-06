// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3FunctionCustomRuntimeConfigHealthCheckConfig {
  final pulumi.Input<int>? failureThreshold;
  final pulumi.Input<String>? httpGetUrl;
  final pulumi.Input<int>? initialDelaySeconds;
  final pulumi.Input<int>? periodSeconds;
  final pulumi.Input<int>? successThreshold;
  final pulumi.Input<int>? timeoutSeconds;

  /// Creates a new [V3FunctionCustomRuntimeConfigHealthCheckConfig].
  /// [failureThreshold] Optional.
  /// [httpGetUrl] Optional.
  /// [initialDelaySeconds] Optional.
  /// [periodSeconds] Optional.
  /// [successThreshold] Optional.
  /// [timeoutSeconds] Optional.
  const V3FunctionCustomRuntimeConfigHealthCheckConfig({
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
      failureThreshold: (() { final guardedValue = map['failureThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpGetUrl: (() { final guardedValue = map['httpGetUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      initialDelaySeconds: (() { final guardedValue = map['initialDelaySeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodSeconds: (() { final guardedValue = map['periodSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      successThreshold: (() { final guardedValue = map['successThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

