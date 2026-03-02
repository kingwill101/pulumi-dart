// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupHealthCheckConfig {
  /// The backend server port that is used for health checks.
  ///
  /// Valid values: `1` to `65535`.
  ///
  /// Default value: `80`.
  final pulumi.Input<int>? healthCheckConnectPort;
  /// The maximum timeout period of a health check response.
  ///
  /// Unit: seconds
  ///
  /// Valid values: `1` to `300`.
  ///
  /// Default value: `5`.
  final pulumi.Input<int>? healthCheckConnectTimeout;
  /// The domain name that you want to use for health checks. Valid values:
  ///
  /// *   **$SERVER_IP** (default): the private IP address of a backend server.
  final pulumi.Input<String>? healthCheckDomain;
  /// Specifies whether to enable the health check feature. Valid values:
  final pulumi.Input<bool>? healthCheckEnabled;
  /// The HTTP status codes that the system returns for health checks.
  final pulumi.Input<List<String>>? healthCheckHttpCodes;
  /// The interval at which health checks are performed.
  ///
  /// Unit: seconds
  ///
  /// Valid values: `1` to `50`.
  ///
  /// Default value: `10`.
  final pulumi.Input<int>? healthCheckInterval;
  /// The URL that is used for health checks.
  ///
  /// The URL must be 1 to 80 characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), percent signs (%), question marks (?), number signs (#), and ampersands (&). The URL can also contain the following extended characters: \_ ; ~ ! ( ) \* \[ ] @ $ ^ : ' , + =
  ///
  /// The URL must start with a forward slash (/).
  ///
  /// > **NOTE:**  This parameter takes effect only if you set `HealthCheckProtocol` to `HTTP`.
  final pulumi.Input<String>? healthCheckPath;
  /// The protocol that is used for health checks. Valid values:
  ///
  /// - `TCP`: TCP health checks send TCP SYN packets to a backend server to check whether the port of the backend server is reachable.
  /// - `HTTP`: HTTP health checks simulate a process that uses a web browser to access resources by sending HEAD or GET requests to an instance. These requests are used to check whether the instance is healthy.
  final pulumi.Input<String>? healthCheckProtocol;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health status changes from `fail` to `success`.
  ///
  /// Valid values: `2` to `10`.
  ///
  /// Default value: `2`.
  final pulumi.Input<int>? healthyThreshold;
  /// The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health status changes from `success` to `fail`.
  ///
  /// Valid values: `2` to `10`.
  ///
  /// Default value: `2`.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [ServerGroupHealthCheckConfig].
  /// [healthCheckConnectPort] The backend server port that is used for health checks.
  /// [healthCheckConnectTimeout] The maximum timeout period of a health check response.
  /// [healthCheckDomain] The domain name that you want to use for health checks. Valid values:
  /// [healthCheckEnabled] Specifies whether to enable the health check feature. Valid values:
  /// [healthCheckHttpCodes] The HTTP status codes that the system returns for health checks.
  /// [healthCheckInterval] The interval at which health checks are performed.
  /// [healthCheckPath] The URL that is used for health checks.
  /// [healthCheckProtocol] The protocol that is used for health checks. Valid values:
  /// [healthyThreshold] The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health status changes from `fail` to `success`.
  /// [unhealthyThreshold] The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health status changes from `success` to `fail`.
  ServerGroupHealthCheckConfig({
    this.healthCheckConnectPort,
    this.healthCheckConnectTimeout,
    this.healthCheckDomain,
    this.healthCheckEnabled,
    this.healthCheckHttpCodes,
    this.healthCheckInterval,
    this.healthCheckPath,
    this.healthCheckProtocol,
    this.healthyThreshold,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckConnectPort': ?healthCheckConnectPort,
      'healthCheckConnectTimeout': ?healthCheckConnectTimeout,
      'healthCheckDomain': ?healthCheckDomain,
      'healthCheckEnabled': ?healthCheckEnabled,
      'healthCheckHttpCodes': ?healthCheckHttpCodes,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckProtocol': ?healthCheckProtocol,
      'healthyThreshold': ?healthyThreshold,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ServerGroupHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupHealthCheckConfig(
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : (map['healthCheckConnectPort'] as int).input(),
      healthCheckConnectTimeout: map['healthCheckConnectTimeout'] == null ? null : (map['healthCheckConnectTimeout'] as int).input(),
      healthCheckDomain: map['healthCheckDomain'] == null ? null : (map['healthCheckDomain'] as String).input(),
      healthCheckEnabled: map['healthCheckEnabled'] == null ? null : (map['healthCheckEnabled'] as bool).input(),
      healthCheckHttpCodes: map['healthCheckHttpCodes'] == null ? null : ((map['healthCheckHttpCodes'] as List).cast<String>()).input(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : (map['healthCheckInterval'] as int).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath'] as String).input(),
      healthCheckProtocol: map['healthCheckProtocol'] == null ? null : (map['healthCheckProtocol'] as String).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold'] as int).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold'] as int).input(),
    );
  }
}

