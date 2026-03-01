// ignore_for_file: unused_element, unnecessary_cast


class GetServerGroupsGroupHealthCheck {
  /// The backend port that is used for health checks.
  final int healthCheckConnectPort;
  /// The maximum timeout period of a health check response.
  final int healthCheckConnectTimeout;
  /// The domain name that is used for health checks.
  final String healthCheckDomain;
  /// Specifies whether to enable health checks.
  final bool healthCheckEnabled;
  /// The HTTP status codes returned for health checks.
  final List<String> healthCheckHttpCodes;
  /// The interval between two consecutive health checks.
  final int healthCheckInterval;
  /// The protocol that is used for health checks.
  final String healthCheckType;
  /// The path to which health check requests are sent.
  final String healthCheckUrl;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy.
  final int healthyThreshold;
  /// The HTTP method that is used for health checks.
  final String httpCheckMethod;
  /// The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy.
  final int unhealthyThreshold;

  /// Creates a new [GetServerGroupsGroupHealthCheck].
  /// [healthCheckConnectPort] The backend port that is used for health checks.
  /// [healthCheckConnectTimeout] The maximum timeout period of a health check response.
  /// [healthCheckDomain] The domain name that is used for health checks.
  /// [healthCheckEnabled] Specifies whether to enable health checks.
  /// [healthCheckHttpCodes] The HTTP status codes returned for health checks.
  /// [healthCheckInterval] The interval between two consecutive health checks.
  /// [healthCheckType] The protocol that is used for health checks.
  /// [healthCheckUrl] The path to which health check requests are sent.
  /// [healthyThreshold] The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy.
  /// [httpCheckMethod] The HTTP method that is used for health checks.
  /// [unhealthyThreshold] The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy.
  GetServerGroupsGroupHealthCheck({
    required this.healthCheckConnectPort,
    required this.healthCheckConnectTimeout,
    required this.healthCheckDomain,
    required this.healthCheckEnabled,
    required this.healthCheckHttpCodes,
    required this.healthCheckInterval,
    required this.healthCheckType,
    required this.healthCheckUrl,
    required this.healthyThreshold,
    required this.httpCheckMethod,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckConnectPort': healthCheckConnectPort,
      'healthCheckConnectTimeout': healthCheckConnectTimeout,
      'healthCheckDomain': healthCheckDomain,
      'healthCheckEnabled': healthCheckEnabled,
      'healthCheckHttpCodes': healthCheckHttpCodes,
      'healthCheckInterval': healthCheckInterval,
      'healthCheckType': healthCheckType,
      'healthCheckUrl': healthCheckUrl,
      'healthyThreshold': healthyThreshold,
      'httpCheckMethod': httpCheckMethod,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetServerGroupsGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroupHealthCheck(
      healthCheckConnectPort: map['healthCheckConnectPort'] as int,
      healthCheckConnectTimeout: map['healthCheckConnectTimeout'] as int,
      healthCheckDomain: map['healthCheckDomain'] as String,
      healthCheckEnabled: map['healthCheckEnabled'] as bool,
      healthCheckHttpCodes: (map['healthCheckHttpCodes'] as List).cast<String>(),
      healthCheckInterval: map['healthCheckInterval'] as int,
      healthCheckType: map['healthCheckType'] as String,
      healthCheckUrl: map['healthCheckUrl'] as String,
      healthyThreshold: map['healthyThreshold'] as int,
      httpCheckMethod: map['httpCheckMethod'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}

