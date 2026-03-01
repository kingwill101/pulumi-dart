// ignore_for_file: unused_element, unnecessary_cast


class ServerGroupHealthCheck {
  /// The port that you want to use for health checks on backend servers.
  /// Valid values: `0` to `65535`.
  /// Default value: `0`. If you set the value to 0, the port of the backend server is used for health checks.
  final int? healthCheckConnectPort;
  /// The maximum timeout period of a health check. Unit: seconds. Valid values: `1` to `300`. Default value: `5`.
  final int? healthCheckConnectTimeout;
  /// The domain name that you want to use for health checks. Valid values:
  /// - `$SERVER_IP`: the private IP address of a backend server.
  final String? healthCheckDomain;
  /// Specifies whether to enable the health check feature. Valid values:
  final bool? healthCheckEnabled;
  /// health check response character string. The value contains a maximum of 512 characters
  final String? healthCheckExp;
  /// The HTTP status codes to return for health checks. Separate multiple HTTP status codes with commas (,). Valid values: `http\_2xx` (default), `http\_3xx`, `http\_4xx`, and `http\_5xx`.
  ///
  /// > **NOTE:**  This parameter takes effect only when `HealthCheckType` is set to `HTTP`.
  final List<String>? healthCheckHttpCodes;
  /// The interval at which health checks are performed. Unit: seconds.
  /// Valid values: `5` to `50`.
  /// Default value: `10`.
  final int? healthCheckInterval;
  /// UDP healthy check request string, the value is a character string of 512 characters
  final String? healthCheckReq;
  /// The protocol that you want to use for health checks. Valid values: `TCP` (default) and `HTTP`.
  final String? healthCheckType;
  /// The path to which health check requests are sent.
  ///
  /// The path must be 1 to 80 characters in length, and can contain only letters, digits, and the following special characters: `- / . % ? # & =`. It can also contain the following extended characters: `_ ; ~ ! ( ) * [ ] @ $ ^ : ' , +`. The path must start with a forward slash (/).
  ///
  /// > **NOTE:**  This parameter takes effect only when `HealthCheckType` is set to `HTTP`.
  final String? healthCheckUrl;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health status changes from `fail` to `success`.
  /// Valid values: `2` to `10`.
  /// Default value: `2`.
  final int? healthyThreshold;
  /// The HTTP method that is used for health checks. Valid values: `GET` (default) and `HEAD`.
  ///
  /// > **NOTE:**  This parameter takes effect only when `HealthCheckType` is set to `HTTP`.
  final String? httpCheckMethod;
  /// The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health status changes from `success` to `fail`.
  /// Valid values: `2` to `10`.
  /// Default value: `2`.
  final int? unhealthyThreshold;

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
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : map['healthCheckConnectPort'] as int,
      healthCheckConnectTimeout: map['healthCheckConnectTimeout'] == null ? null : map['healthCheckConnectTimeout'] as int,
      healthCheckDomain: map['healthCheckDomain'] == null ? null : map['healthCheckDomain'] as String,
      healthCheckEnabled: map['healthCheckEnabled'] == null ? null : map['healthCheckEnabled'] as bool,
      healthCheckExp: map['healthCheckExp'] == null ? null : map['healthCheckExp'] as String,
      healthCheckHttpCodes: map['healthCheckHttpCodes'] == null ? null : (map['healthCheckHttpCodes'] as List).cast<String>(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : map['healthCheckInterval'] as int,
      healthCheckReq: map['healthCheckReq'] == null ? null : map['healthCheckReq'] as String,
      healthCheckType: map['healthCheckType'] == null ? null : map['healthCheckType'] as String,
      healthCheckUrl: map['healthCheckUrl'] == null ? null : map['healthCheckUrl'] as String,
      healthyThreshold: map['healthyThreshold'] == null ? null : map['healthyThreshold'] as int,
      httpCheckMethod: map['httpCheckMethod'] == null ? null : map['httpCheckMethod'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : map['unhealthyThreshold'] as int,
    );
  }
}

