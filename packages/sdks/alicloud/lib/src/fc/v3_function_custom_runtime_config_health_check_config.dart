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
      failureThreshold: map['failureThreshold'] == null ? null : (map['failureThreshold']! as int).input(),
      httpGetUrl: map['httpGetUrl'] == null ? null : (map['httpGetUrl']! as String).input(),
      initialDelaySeconds: map['initialDelaySeconds'] == null ? null : (map['initialDelaySeconds']! as int).input(),
      periodSeconds: map['periodSeconds'] == null ? null : (map['periodSeconds']! as int).input(),
      successThreshold: map['successThreshold'] == null ? null : (map['successThreshold']! as int).input(),
      timeoutSeconds: map['timeoutSeconds'] == null ? null : (map['timeoutSeconds']! as int).input(),
    );
  }
}

