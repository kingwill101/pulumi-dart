// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig {
  /// The health check failure threshold. The system considers the health check failure when the health check fails. The value range is 1~120. The default value is 3.
  final pulumi.Input<int> failureThreshold;
  /// The URL of the container's custom health check. No more than 2048 characters in length.
  final pulumi.Input<String> httpGetUrl;
  /// The delay between the start of the container and the initiation of the health check. Value range 0~120. The default value is 0.
  final pulumi.Input<int> initialDelaySeconds;
  /// Health check cycle. The value range is 1~120. The default value is 3.
  final pulumi.Input<int> periodSeconds;
  /// The threshold for the number of successful health checks. When the threshold is reached, the system considers that the health check is successful. The value range is 1~120. The default value is 1.
  final pulumi.Input<int> successThreshold;
  /// Health check timeout. Value range 1~3. The default value is 1.
  final pulumi.Input<int> timeoutSeconds;

  /// Creates a new [GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig].
  /// [failureThreshold] The health check failure threshold. The system considers the health check failure when the health check fails. The value range is 1~120. The default value is 3.
  /// [httpGetUrl] The URL of the container's custom health check. No more than 2048 characters in length.
  /// [initialDelaySeconds] The delay between the start of the container and the initiation of the health check. Value range 0~120. The default value is 0.
  /// [periodSeconds] Health check cycle. The value range is 1~120. The default value is 3.
  /// [successThreshold] The threshold for the number of successful health checks. When the threshold is reached, the system considers that the health check is successful. The value range is 1~120. The default value is 1.
  /// [timeoutSeconds] Health check timeout. Value range 1~3. The default value is 1.
  GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig({
    required this.failureThreshold,
    required this.httpGetUrl,
    required this.initialDelaySeconds,
    required this.periodSeconds,
    required this.successThreshold,
    required this.timeoutSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureThreshold': failureThreshold,
      'httpGetUrl': httpGetUrl,
      'initialDelaySeconds': initialDelaySeconds,
      'periodSeconds': periodSeconds,
      'successThreshold': successThreshold,
      'timeoutSeconds': timeoutSeconds,
    };
  }

  factory GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionCustomRuntimeConfigHealthCheckConfig(
      failureThreshold: (map['failureThreshold'] as int).input(),
      httpGetUrl: (map['httpGetUrl'] as String).input(),
      initialDelaySeconds: (map['initialDelaySeconds'] as int).input(),
      periodSeconds: (map['periodSeconds'] as int).input(),
      successThreshold: (map['successThreshold'] as int).input(),
      timeoutSeconds: (map['timeoutSeconds'] as int).input(),
    );
  }
}

