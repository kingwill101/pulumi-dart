// ignore_for_file: unused_element, unnecessary_cast


class GetServerGroupsGroupHealthCheckConfig {
  /// The status code for a successful health check. Multiple status codes can be specified as a list.
  final List<String> healthCheckCodes;
  /// The port of the backend server that is used for health checks.
  final int healthCheckConnectPort;
  /// Indicates whether health checks are enabled.
  final bool healthCheckEnabled;
  /// The domain name that is used for health checks.
  final String healthCheckHost;
  /// HTTP protocol version.
  final String healthCheckHttpVersion;
  /// The time interval between two consecutive health checks.
  final int healthCheckInterval;
  /// Health check method.
  final String healthCheckMethod;
  /// The forwarding rule path of health checks.
  final String healthCheckPath;
  /// Health check protocol.
  final String healthCheckProtocol;
  /// The timeout period of a health check response. If a backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the ECS instance is considered unhealthy.
  final int healthCheckTimeout;
  /// The number of health checks that an unhealthy backend server must pass consecutively before it is declared healthy. In this case, the health check state is changed from fail to success.
  final int healthyThreshold;
  /// The number of consecutive health checks that a healthy backend server must consecutively fail before it is declared unhealthy. In this case, the health check state is changed from success to fail.
  final int unhealthyThreshold;

  /// Creates a new [GetServerGroupsGroupHealthCheckConfig].
  /// [healthCheckCodes] The status code for a successful health check. Multiple status codes can be specified as a list.
  /// [healthCheckConnectPort] The port of the backend server that is used for health checks.
  /// [healthCheckEnabled] Indicates whether health checks are enabled.
  /// [healthCheckHost] The domain name that is used for health checks.
  /// [healthCheckHttpVersion] HTTP protocol version.
  /// [healthCheckInterval] The time interval between two consecutive health checks.
  /// [healthCheckMethod] Health check method.
  /// [healthCheckPath] The forwarding rule path of health checks.
  /// [healthCheckProtocol] Health check protocol.
  /// [healthCheckTimeout] The timeout period of a health check response. If a backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the ECS instance is considered unhealthy.
  /// [healthyThreshold] The number of health checks that an unhealthy backend server must pass consecutively before it is declared healthy. In this case, the health check state is changed from fail to success.
  /// [unhealthyThreshold] The number of consecutive health checks that a healthy backend server must consecutively fail before it is declared unhealthy. In this case, the health check state is changed from success to fail.
  GetServerGroupsGroupHealthCheckConfig({
    required this.healthCheckCodes,
    required this.healthCheckConnectPort,
    required this.healthCheckEnabled,
    required this.healthCheckHost,
    required this.healthCheckHttpVersion,
    required this.healthCheckInterval,
    required this.healthCheckMethod,
    required this.healthCheckPath,
    required this.healthCheckProtocol,
    required this.healthCheckTimeout,
    required this.healthyThreshold,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckCodes': healthCheckCodes,
      'healthCheckConnectPort': healthCheckConnectPort,
      'healthCheckEnabled': healthCheckEnabled,
      'healthCheckHost': healthCheckHost,
      'healthCheckHttpVersion': healthCheckHttpVersion,
      'healthCheckInterval': healthCheckInterval,
      'healthCheckMethod': healthCheckMethod,
      'healthCheckPath': healthCheckPath,
      'healthCheckProtocol': healthCheckProtocol,
      'healthCheckTimeout': healthCheckTimeout,
      'healthyThreshold': healthyThreshold,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetServerGroupsGroupHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroupHealthCheckConfig(
      healthCheckCodes: (map['healthCheckCodes'] as List).cast<String>(),
      healthCheckConnectPort: map['healthCheckConnectPort'] as int,
      healthCheckEnabled: map['healthCheckEnabled'] as bool,
      healthCheckHost: map['healthCheckHost'] as String,
      healthCheckHttpVersion: map['healthCheckHttpVersion'] as String,
      healthCheckInterval: map['healthCheckInterval'] as int,
      healthCheckMethod: map['healthCheckMethod'] as String,
      healthCheckPath: map['healthCheckPath'] as String,
      healthCheckProtocol: map['healthCheckProtocol'] as String,
      healthCheckTimeout: map['healthCheckTimeout'] as int,
      healthyThreshold: map['healthyThreshold'] as int,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

