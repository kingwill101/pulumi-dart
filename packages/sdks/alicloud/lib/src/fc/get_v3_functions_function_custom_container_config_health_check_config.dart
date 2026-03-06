// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig {
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

  /// Creates a new [GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig].
  /// [failureThreshold] The health check failure threshold. The system considers the health check failure when the health check fails. The value range is 1~120. The default value is 3.
  /// [httpGetUrl] The URL of the container's custom health check. No more than 2048 characters in length.
  /// [initialDelaySeconds] The delay between the start of the container and the initiation of the health check. Value range 0~120. The default value is 0.
  /// [periodSeconds] Health check cycle. The value range is 1~120. The default value is 3.
  /// [successThreshold] The threshold for the number of successful health checks. When the threshold is reached, the system considers that the health check is successful. The value range is 1~120. The default value is 1.
  /// [timeoutSeconds] Health check timeout. Value range 1~3. The default value is 1.
  const GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig({
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

  factory GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsFunctionCustomContainerConfigHealthCheckConfig(
      failureThreshold: pulumi.Input.fromValue(map['failureThreshold'] as int),
      httpGetUrl: pulumi.Input.fromValue(map['httpGetUrl'] as String),
      initialDelaySeconds: pulumi.Input.fromValue(map['initialDelaySeconds'] as int),
      periodSeconds: pulumi.Input.fromValue(map['periodSeconds'] as int),
      successThreshold: pulumi.Input.fromValue(map['successThreshold'] as int),
      timeoutSeconds: pulumi.Input.fromValue(map['timeoutSeconds'] as int),
    );
  }
}

