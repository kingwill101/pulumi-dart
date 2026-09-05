// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerServiceDeploymentVersionPublicEndpointHealthCheck {
  /// Number of consecutive health check successes required before moving the container to the Healthy state. Defaults to 2.
  final pulumi.Input<int?>? healthyThreshold;
  /// Approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. Defaults to 5.
  final pulumi.Input<int?>? intervalSeconds;
  /// Path on the container on which to perform the health check. Defaults to "/".
  final pulumi.Input<String?>? path;
  /// HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499. Defaults to "200-499".
  final pulumi.Input<String?>? successCodes;
  /// Amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. Defaults to 2.
  final pulumi.Input<int?>? timeoutSeconds;
  /// Number of consecutive health check failures required before moving the container to the Unhealthy state. Defaults to 2.
  final pulumi.Input<int?>? unhealthyThreshold;

  /// Creates a new [ContainerServiceDeploymentVersionPublicEndpointHealthCheck].
  /// [healthyThreshold] Number of consecutive health check successes required before moving the container to the Healthy state. Defaults to 2.
  /// [intervalSeconds] Approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. Defaults to 5.
  /// [path] Path on the container on which to perform the health check. Defaults to "/".
  /// [successCodes] HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499. Defaults to "200-499".
  /// [timeoutSeconds] Amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. Defaults to 2.
  /// [unhealthyThreshold] Number of consecutive health check failures required before moving the container to the Unhealthy state. Defaults to 2.
  const ContainerServiceDeploymentVersionPublicEndpointHealthCheck({
    this.healthyThreshold,
    this.intervalSeconds,
    this.path,
    this.successCodes,
    this.timeoutSeconds,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthyThreshold': ?healthyThreshold,
      'intervalSeconds': ?intervalSeconds,
      'path': ?path,
      'successCodes': ?successCodes,
      'timeoutSeconds': ?timeoutSeconds,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ContainerServiceDeploymentVersionPublicEndpointHealthCheck.fromMap(Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionPublicEndpointHealthCheck(
      healthyThreshold: (() { final guardedValue = map['healthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      intervalSeconds: (() { final guardedValue = map['intervalSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      successCodes: (() { final guardedValue = map['successCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutSeconds: (() { final guardedValue = map['timeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
