// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerGroupHealthCheckConfig {
  /// The status code for a successful health check
  final pulumi.Input<List<String>>? healthCheckCodes;
  /// The backend port that is used for health checks.
  ///
  /// Valid values: `0` to `65535`.
  ///
  /// If you set the value to `0`, the backend port is used for health checks.
  ///
  /// > **NOTE:**   This parameter takes effect only if you set `HealthCheckEnabled` to `true`.
  final pulumi.Input<int>? healthCheckConnectPort;
  /// Specifies whether to enable the health check feature. Valid values:
  final pulumi.Input<bool> healthCheckEnabled;
  /// The domain name that is used for health checks.
  ///
  /// *   **Backend Server Internal IP** (default): Use the internal IP address of backend servers as the health check domain name.
  ///
  /// *   **Custom Domain Name**: Enter a domain name.
  ///
  /// *   The domain name must be 1 to 80 characters in length.
  /// *   The domain name can contain lowercase letters, digits, hyphens (-), and periods (.).
  /// *   The domain name must contain at least one period (.) but cannot start or end with a period (.).
  /// *   The rightmost domain label of the domain name can contain only letters, and cannot contain digits or hyphens (-).
  /// *   The domain name cannot start or end with a hyphen (-).
  ///
  /// > **NOTE:**   This parameter takes effect only if `HealthCheckProtocol` is set to `HTTP`, `HTTPS`, or `gRPC`.
  final pulumi.Input<String>? healthCheckHost;
  /// The HTTP version that is used for health checks. Valid values:
  ///
  /// *   **HTTP1.0**
  ///
  /// *   **HTTP1.1**
  ///
  /// > **NOTE:**   This parameter takes effect only if you set `HealthCheckEnabled` to true and `HealthCheckProtocol` to `HTTP` or `HTTPS`.
  final pulumi.Input<String>? healthCheckHttpVersion;
  /// The interval at which health checks are performed. Unit: seconds.
  ///
  /// Valid values: `1` to `50`.
  ///
  /// > **NOTE:**   This parameter takes effect only if you set `HealthCheckEnabled` to `true`.
  final pulumi.Input<int>? healthCheckInterval;
  /// The HTTP method that is used for health checks. Valid values:
  ///
  /// *   `GET`: If the length of a response exceeds 8 KB, the response is truncated. However, the health check result is not affected.
  ///
  /// *   `POST`: gRPC health checks use the POST method by default.
  ///
  /// *   `HEAD`: HTTP and HTTPS health checks use the HEAD method by default.
  ///
  /// > **NOTE:**   This parameter takes effect only if you set `HealthCheckEnabled` to true and `HealthCheckProtocol` to `HTTP`, `HTTPS`, or `gRPC`.
  final pulumi.Input<String>? healthCheckMethod;
  /// The URL that is used for health checks.
  ///
  /// The URL must be 1 to 80 characters in length, and can contain letters, digits, and the following special characters: `- / . % ? # & =`. It can also contain the following extended characters: `_ ; ~ ! ( ) * [ ] @ $ ^ : ' , +`. The URL must start with a forward slash (`/`).
  ///
  /// > **NOTE:**   This parameter takes effect only if you set `HealthCheckEnabled` to `true` and `HealthCheckProtocol` to `HTTP` or `HTTPS`.
  final pulumi.Input<String>? healthCheckPath;
  /// The protocol that is used for health checks. Valid values:
  ///
  /// - `HTTP`: HTTP health checks simulate browser behaviors by sending HEAD or GET requests to probe the availability of backend servers.
  /// - `HTTPS`: HTTPS health checks simulate browser behaviors by sending HEAD or GET requests to probe the availability of backend servers. HTTPS provides higher security than HTTP because HTTPS supports data encryption.
  /// - `TCP`: TCP health checks send TCP SYN packets to a backend server to probe the availability of backend servers.
  /// - `gRPC`: gRPC health checks send POST or GET requests to a backend server to check whether the backend server is healthy.
  final pulumi.Input<String>? healthCheckProtocol;
  /// The timeout period of a health check response. If a backend ECS instance does not respond within the specified timeout period, the ECS instance fails the health check. Unit: seconds.
  ///
  /// Valid values: `1` to `300`.
  ///
  /// > **NOTE:**   This parameter takes effect only if you set `HealthCheckEnabled` to `true`.
  final pulumi.Input<int>? healthCheckTimeout;
  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health check status of the backend server changes from `fail` to `success`.
  ///
  /// Valid values: `2` to `10`.
  ///
  /// Default value: `3`.
  final pulumi.Input<int>? healthyThreshold;
  /// The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health check status of the backend server changes from `success` to `fail`.
  ///
  /// Valid values: `2` to `10`.
  ///
  /// Default value: `3`.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [ServerGroupHealthCheckConfig].
  /// [healthCheckCodes] The status code for a successful health check
  /// [healthCheckConnectPort] The backend port that is used for health checks.
  /// [healthCheckEnabled] Specifies whether to enable the health check feature. Valid values:
  /// [healthCheckHost] The domain name that is used for health checks.
  /// [healthCheckHttpVersion] The HTTP version that is used for health checks. Valid values:
  /// [healthCheckInterval] The interval at which health checks are performed. Unit: seconds.
  /// [healthCheckMethod] The HTTP method that is used for health checks. Valid values:
  /// [healthCheckPath] The URL that is used for health checks.
  /// [healthCheckProtocol] The protocol that is used for health checks. Valid values:
  /// [healthCheckTimeout] The timeout period of a health check response. If a backend ECS instance does not respond within the specified timeout period, the ECS instance fails the health check. Unit: seconds.
  /// [healthyThreshold] The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy. In this case, the health check status of the backend server changes from `fail` to `success`.
  /// [unhealthyThreshold] The number of times that a healthy backend server must consecutively fail health checks before it is declared unhealthy. In this case, the health check status of the backend server changes from `success` to `fail`.
  ServerGroupHealthCheckConfig({
    this.healthCheckCodes,
    this.healthCheckConnectPort,
    required this.healthCheckEnabled,
    this.healthCheckHost,
    this.healthCheckHttpVersion,
    this.healthCheckInterval,
    this.healthCheckMethod,
    this.healthCheckPath,
    this.healthCheckProtocol,
    this.healthCheckTimeout,
    this.healthyThreshold,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckCodes': ?healthCheckCodes,
      'healthCheckConnectPort': ?healthCheckConnectPort,
      'healthCheckEnabled': healthCheckEnabled,
      'healthCheckHost': ?healthCheckHost,
      'healthCheckHttpVersion': ?healthCheckHttpVersion,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckMethod': ?healthCheckMethod,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckProtocol': ?healthCheckProtocol,
      'healthCheckTimeout': ?healthCheckTimeout,
      'healthyThreshold': ?healthyThreshold,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory ServerGroupHealthCheckConfig.fromMap(Map<String, dynamic> map) {
    return ServerGroupHealthCheckConfig(
      healthCheckCodes: map['healthCheckCodes'] == null ? null : ((map['healthCheckCodes']! as List).cast<String>()).input(),
      healthCheckConnectPort: map['healthCheckConnectPort'] == null ? null : (map['healthCheckConnectPort']! as int).input(),
      healthCheckEnabled: (map['healthCheckEnabled'] as bool).input(),
      healthCheckHost: map['healthCheckHost'] == null ? null : (map['healthCheckHost']! as String).input(),
      healthCheckHttpVersion: map['healthCheckHttpVersion'] == null ? null : (map['healthCheckHttpVersion']! as String).input(),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : (map['healthCheckInterval']! as int).input(),
      healthCheckMethod: map['healthCheckMethod'] == null ? null : (map['healthCheckMethod']! as String).input(),
      healthCheckPath: map['healthCheckPath'] == null ? null : (map['healthCheckPath']! as String).input(),
      healthCheckProtocol: map['healthCheckProtocol'] == null ? null : (map['healthCheckProtocol']! as String).input(),
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : (map['healthCheckTimeout']! as int).input(),
      healthyThreshold: map['healthyThreshold'] == null ? null : (map['healthyThreshold']! as int).input(),
      unhealthyThreshold: map['unhealthyThreshold'] == null ? null : (map['unhealthyThreshold']! as int).input(),
    );
  }
}

