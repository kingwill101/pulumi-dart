// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerGroupsGroupHealthCheck {
  /// The backend port that is used for health checks.
  final pulumi.Input<int> healthCheckConnectPort;
  /// The maximum timeout period of a health check response.
  final pulumi.Input<int> healthCheckConnectTimeout;
  /// The domain name that is used for health checks.
  final pulumi.Input<String> healthCheckDomain;
  /// Specifies whether to enable health checks.
  final pulumi.Input<bool> healthCheckEnabled;
  /// The HTTP status codes returned for health checks.
  final pulumi.Input<List<String>> healthCheckHttpCodes;
  /// The interval between two consecutive health checks.
  final pulumi.Input<int> healthCheckInterval;
  /// The protocol that is used for health checks.
  final pulumi.Input<String> healthCheckType;
  /// The path to which health check requests are sent.
  final pulumi.Input<String> healthCheckUrl;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy.
  final pulumi.Input<int> healthyThreshold;
  /// The HTTP method that is used for health checks.
  final pulumi.Input<String> httpCheckMethod;
  /// The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy.
  final pulumi.Input<int> unhealthyThreshold;

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
      healthCheckConnectPort: (map['healthCheckConnectPort'] as int).input(),
      healthCheckConnectTimeout: (map['healthCheckConnectTimeout'] as int).input(),
      healthCheckDomain: (map['healthCheckDomain'] as String).input(),
      healthCheckEnabled: (map['healthCheckEnabled'] as bool).input(),
      healthCheckHttpCodes: ((map['healthCheckHttpCodes'] as List).cast<String>()).input(),
      healthCheckInterval: (map['healthCheckInterval'] as int).input(),
      healthCheckType: (map['healthCheckType'] as String).input(),
      healthCheckUrl: (map['healthCheckUrl'] as String).input(),
      healthyThreshold: (map['healthyThreshold'] as int).input(),
      httpCheckMethod: (map['httpCheckMethod'] as String).input(),
      unhealthyThreshold: (map['unhealthyThreshold'] as int).input(),
    );
  }
}

