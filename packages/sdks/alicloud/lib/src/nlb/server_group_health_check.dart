// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupHealthCheck {
  /// The port that you want to use for health checks on backend servers.
  /// Valid values: `0` to `65535`.
  /// Default value: `0`. If you set the value to 0, the port of the backend server is used for health checks.
  final pulumi.Input<int>? healthCheckConnectPort;
  /// The maximum timeout period of a health check. Unit: seconds. Valid values: `1` to `300`. Default value: `5`.
  final pulumi.Input<int>? healthCheckConnectTimeout;
  /// The domain name that you want to use for health checks. Valid values:
  /// - `$SERVER_IP`: the private IP address of a backend server.
  final pulumi.Input<String>? healthCheckDomain;
  /// Specifies whether to enable the health check feature. Valid values:
  final pulumi.Input<bool>? healthCheckEnabled;
  /// health check response character string. The value contains a maximum of 512 characters
  final pulumi.Input<String>? healthCheckExp;
  /// The HTTP status codes to return for health checks. Separate multiple HTTP status codes with commas (,). Valid values: `http\_2xx` (default), `http\_3xx`, `http\_4xx`, and `http\_5xx`.
  ///
  /// > **NOTE:**  This parameter takes effect only when `HealthCheckType` is set to `HTTP`.
  final pulumi.Input<List<String>>? healthCheckHttpCodes;
  /// The interval at which health checks are performed. Unit: seconds.
  /// Valid values: `5` to `50`.
  /// Default value: `10`.
  final pulumi.Input<int>? healthCheckInterval;
  /// UDP healthy check request string, the value is a character string of 512 characters
  final pulumi.Input<String>? healthCheckReq;
  /// The protocol that you want to use for health checks. Valid values: `TCP` (default) and `HTTP`.
  final pulumi.Input<String>? healthCheckType;
  /// The path to which health check requests are sent.
  ///
  /// The path must be 1 to 80 characters in length, and can contain only letters, digits, and the following special characters: `- / . % ? # & =`. It can also contain the following extended characters: `_ ; ~ ! ( ) * [ ] @ $ ^ : ' , +`. The path must start with a forward slash (/).
  ///
  /// > **NOTE:**  This parameter takes effect only when `HealthCheckType` is set to `HTTP`.
  final pulumi.Input<String>? healthCheckUrl;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health status changes from `fail` to `success`.
  /// Valid values: `2` to `10`.
  /// Default value: `2`.
  final pulumi.Input<int>? healthyThreshold;
  /// The HTTP method that is used for health checks. Valid values: `GET` (default) and `HEAD`.
  ///
  /// > **NOTE:**  This parameter takes effect only when `HealthCheckType` is set to `HTTP`.
  final pulumi.Input<String>? httpCheckMethod;
  /// The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health status changes from `success` to `fail`.
  /// Valid values: `2` to `10`.
  /// Default value: `2`.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [ServerGroupHealthCheck].
  /// [healthCheckConnectPort] The port that you want to use for health checks on backend servers.
  /// [healthCheckConnectTimeout] The maximum timeout period of a health check. Unit: seconds. Valid values: `1` to `300`. Default value: `5`.
  /// [healthCheckDomain] The domain name that you want to use for health checks. Valid values:
  /// [healthCheckEnabled] Specifies whether to enable the health check feature. Valid values:
  /// [healthCheckExp] health check response character string. The value contains a maximum of 512 characters
  /// [healthCheckHttpCodes] The HTTP status codes to return for health checks. Separate multiple HTTP status codes with commas (,). Valid values: `http\_2xx` (default), `http\_3xx`, `http\_4xx`, and `http\_5xx`.
  /// [healthCheckInterval] The interval at which health checks are performed. Unit: seconds.
  /// [healthCheckReq] UDP healthy check request string, the value is a character string of 512 characters
  /// [healthCheckType] The protocol that you want to use for health checks. Valid values: `TCP` (default) and `HTTP`.
  /// [healthCheckUrl] The path to which health check requests are sent.
  /// [healthyThreshold] The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health status changes from `fail` to `success`.
  /// [httpCheckMethod] The HTTP method that is used for health checks. Valid values: `GET` (default) and `HEAD`.
  /// [unhealthyThreshold] The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health status changes from `success` to `fail`.
  ServerGroupHealthCheck({
    this.healthCheckConnectPort,
    this.healthCheckConnectTimeout,
    this.healthCheckDomain,
    this.healthCheckEnabled,
    this.healthCheckExp,
    this.healthCheckHttpCodes,
    this.healthCheckInterval,
    this.healthCheckReq,
    this.healthCheckType,
    this.healthCheckUrl,
    this.healthyThreshold,
    this.httpCheckMethod,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckConnectPort': ?healthCheckConnectPort,
      'healthCheckConnectTimeout': ?healthCheckConnectTimeout,
      'healthCheckDomain': ?healthCheckDomain,
      'healthCheckEnabled': ?healthCheckEnabled,
      'healthCheckExp': ?healthCheckExp,
      'healthCheckHttpCodes': ?healthCheckHttpCodes,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckReq': ?healthCheckReq,
      'healthCheckType': ?healthCheckType,
      'healthCheckUrl': ?healthCheckUrl,
      'healthyThreshold': ?healthyThreshold,
      'httpCheckMethod': ?httpCheckMethod,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ServerGroupHealthCheck.fromMap(Map<String, dynamic> map) {
    return ServerGroupHealthCheck(
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : (map['healthCheckConnectPort']! as int).input(),
      healthCheckConnectTimeout: map['healthCheckConnectTimeout'] == null ? null : (map['healthCheckConnectTimeout']! as int).input(),
      healthCheckDomain: map['healthCheckDomain'] == null ? null : (map['healthCheckDomain']! as String).input(),
      healthCheckEnabled: map['healthCheckEnabled'] == null ? null : (map['healthCheckEnabled']! as bool).input(),
      healthCheckExp: map['healthCheckExp'] == null ? null : (map['healthCheckExp']! as String).input(),
      healthCheckHttpCodes: map['healthCheckHttpCodes'] == null ? null : ((map['healthCheckHttpCodes']! as List).cast<String>()).input(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : (map['healthCheckInterval']! as int).input(),
      healthCheckReq: map['healthCheckReq'] == null ? null : (map['healthCheckReq']! as String).input(),
      healthCheckType: map['healthCheckType'] == null ? null : (map['healthCheckType']! as String).input(),
      healthCheckUrl: map['healthCheckUrl'] == null ? null : (map['healthCheckUrl']! as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold']! as int).input(),
      httpCheckMethod: map['httpCheckMethod'] == null ? null : (map['httpCheckMethod']! as String).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold']! as int).input(),
    );
  }
}

