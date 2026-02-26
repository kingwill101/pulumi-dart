// ignore_for_file: unused_element, unnecessary_cast

class ContainerServiceDeploymentVersionPublicEndpointHealthCheck {
  /// Number of consecutive health check successes required before moving the container to the Healthy state. Defaults to 2.
  final int? healthyThreshold;

  /// Approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. Defaults to 5.
  final int? intervalSeconds;

  /// Path on the container on which to perform the health check. Defaults to "/".
  final String? path;

  /// HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499. Defaults to "200-499".
  final String? successCodes;

  /// Amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. Defaults to 2.
  final int? timeoutSeconds;

  /// Number of consecutive health check failures required before moving the container to the Unhealthy state. Defaults to 2.
  final int? unhealthyThreshold;

  ContainerServiceDeploymentVersionPublicEndpointHealthCheck({
    this.healthyThreshold,
    this.intervalSeconds,
    this.path,
    this.successCodes,
    this.timeoutSeconds,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final intervalSecondsValue = intervalSeconds;
    if (intervalSecondsValue != null) {
      map['intervalSeconds'] = intervalSecondsValue;
    }
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    final successCodesValue = successCodes;
    if (successCodesValue != null) {
      map['successCodes'] = successCodesValue;
    }
    final timeoutSecondsValue = timeoutSeconds;
    if (timeoutSecondsValue != null) {
      map['timeoutSeconds'] = timeoutSecondsValue;
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory ContainerServiceDeploymentVersionPublicEndpointHealthCheck.fromMap(
      Map<String, dynamic> map) {
    return ContainerServiceDeploymentVersionPublicEndpointHealthCheck(
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      intervalSeconds:
          map['intervalSeconds'] == null ? null : map['intervalSeconds'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      successCodes:
          map['successCodes'] == null ? null : map['successCodes'] as String,
      timeoutSeconds:
          map['timeoutSeconds'] == null ? null : map['timeoutSeconds'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
