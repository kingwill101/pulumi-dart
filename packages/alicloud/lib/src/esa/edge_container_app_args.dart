// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_edge_container_app_edge_container_app_args_doc}
/// The set of arguments for EdgeContainerApp.
/// {@endtemplate}
/// {@macro pulumi_esa_edge_container_app_edge_container_app_args_doc}
class EdgeContainerAppArgs {
  /// The application name must start with a lowercase letter. Lowercase letters, numbers, and bars are supported. The length is limited to 6 to 128 characters.
  final pulumi.Input<String> edgeContainerAppName;
  /// The number of consecutive successful health checks required for an application to be considered as healthy. Valid values: 1 to 10. Default value: 2.
  final pulumi.Input<int>? healthCheckFailTimes;
  /// The health check type. By default, this parameter is left empty.
  ///
  /// Valid values:
  final pulumi.Input<String>? healthCheckHost;
  /// The domain name that is used for health checks. This parameter is empty by default.
  final pulumi.Input<String>? healthCheckHttpCode;
  /// The timeout period of a health check response. If a backend ECS instance does not respond within the specified timeout period, the ECS instance fails the health check. Unit: seconds.
  /// Valid values: `1` to `100`.
  /// Default value: `3`.
  final pulumi.Input<int>? healthCheckInterval;
  /// The HTTP status code returned for a successful health check. Valid values:
  ///
  /// - **http\_2xx** (default)
  /// - **http\_3xx**
  final pulumi.Input<String>? healthCheckMethod;
  /// The URI used for health checks. The URI must be `1` to `80` characters in length. Default value: "/".
  final pulumi.Input<int>? healthCheckPort;
  /// The interval between two consecutive health checks. Unit: seconds. Valid values: `1` to `50`. Default value: `5`.
  final pulumi.Input<int>? healthCheckSuccTimes;
  /// The port used for health checks. Valid values: 1 to 65535. Default value: 80.
  final pulumi.Input<int>? healthCheckTimeout;
  /// The remarks. This parameter is empty by default.
  final pulumi.Input<String>? healthCheckType;
  /// The HTTP request method for health checks. Valid values:
  ///
  /// - `HEAD` (default): requests the headers of the resource.
  /// - `GET`: requests the specified resource and returns both the headers and entity body.
  final pulumi.Input<String>? healthCheckUri;
  /// The backend port, which is also the service port of the application. Valid values: 1 to 65535.
  final pulumi.Input<String>? remarks;
  /// The name of the application. The name must start with a lowercase letter and can contain lowercase letters, digits, and hyphens (-). The name must be 6 to 128 characters in length.
  final pulumi.Input<int> servicePort;
  /// The server port. Valid values: 1 to 65535.
  final pulumi.Input<int> targetPort;

  /// Creates a new [EdgeContainerAppArgs].
  /// [edgeContainerAppName] The application name must start with a lowercase letter. Lowercase letters, numbers, and bars are supported. The length is limited to 6 to 128 characters.
  /// [healthCheckFailTimes] The number of consecutive successful health checks required for an application to be considered as healthy. Valid values: 1 to 10. Default value: 2.
  /// [healthCheckHost] The health check type. By default, this parameter is left empty.
  /// [healthCheckHttpCode] The domain name that is used for health checks. This parameter is empty by default.
  /// [healthCheckInterval] The timeout period of a health check response. If a backend ECS instance does not respond within the specified timeout period, the ECS instance fails the health check. Unit: seconds.
  /// [healthCheckMethod] The HTTP status code returned for a successful health check. Valid values:
  /// [healthCheckPort] The URI used for health checks. The URI must be `1` to `80` characters in length. Default value: "/".
  /// [healthCheckSuccTimes] The interval between two consecutive health checks. Unit: seconds. Valid values: `1` to `50`. Default value: `5`.
  /// [healthCheckTimeout] The port used for health checks. Valid values: 1 to 65535. Default value: 80.
  /// [healthCheckType] The remarks. This parameter is empty by default.
  /// [healthCheckUri] The HTTP request method for health checks. Valid values:
  /// [remarks] The backend port, which is also the service port of the application. Valid values: 1 to 65535.
  /// [servicePort] The name of the application. The name must start with a lowercase letter and can contain lowercase letters, digits, and hyphens (-). The name must be 6 to 128 characters in length.
  /// [targetPort] The server port. Valid values: 1 to 65535.
  EdgeContainerAppArgs({
    required String edgeContainerAppName,
    int? healthCheckFailTimes,
    String? healthCheckHost,
    String? healthCheckHttpCode,
    int? healthCheckInterval,
    String? healthCheckMethod,
    int? healthCheckPort,
    int? healthCheckSuccTimes,
    int? healthCheckTimeout,
    String? healthCheckType,
    String? healthCheckUri,
    String? remarks,
    required int servicePort,
    required int targetPort,
  }) :
      edgeContainerAppName = pulumi.Input.asInput<String>(edgeContainerAppName),
      healthCheckFailTimes = pulumi.Input.asOptionalInput<int>(healthCheckFailTimes),
      healthCheckHost = pulumi.Input.asOptionalInput<String>(healthCheckHost),
      healthCheckHttpCode = pulumi.Input.asOptionalInput<String>(healthCheckHttpCode),
      healthCheckInterval = pulumi.Input.asOptionalInput<int>(healthCheckInterval),
      healthCheckMethod = pulumi.Input.asOptionalInput<String>(healthCheckMethod),
      healthCheckPort = pulumi.Input.asOptionalInput<int>(healthCheckPort),
      healthCheckSuccTimes = pulumi.Input.asOptionalInput<int>(healthCheckSuccTimes),
      healthCheckTimeout = pulumi.Input.asOptionalInput<int>(healthCheckTimeout),
      healthCheckType = pulumi.Input.asOptionalInput<String>(healthCheckType),
      healthCheckUri = pulumi.Input.asOptionalInput<String>(healthCheckUri),
      remarks = pulumi.Input.asOptionalInput<String>(remarks),
      servicePort = pulumi.Input.asInput<int>(servicePort),
      targetPort = pulumi.Input.asInput<int>(targetPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeContainerAppName': edgeContainerAppName,
      'healthCheckFailTimes': ?healthCheckFailTimes,
      'healthCheckHost': ?healthCheckHost,
      'healthCheckHttpCode': ?healthCheckHttpCode,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckMethod': ?healthCheckMethod,
      'healthCheckPort': ?healthCheckPort,
      'healthCheckSuccTimes': ?healthCheckSuccTimes,
      'healthCheckTimeout': ?healthCheckTimeout,
      'healthCheckType': ?healthCheckType,
      'healthCheckUri': ?healthCheckUri,
      'remarks': ?remarks,
      'servicePort': servicePort,
      'targetPort': targetPort,
    };
  }

  factory EdgeContainerAppArgs.fromMap(Map<String, dynamic> map) {
    return EdgeContainerAppArgs(
      edgeContainerAppName: map['edgeContainerAppName'] as String,
      healthCheckFailTimes: map['healthCheckFailTimes'] == null ? null : map['healthCheckFailTimes'] as int,
      healthCheckHost: map['healthCheckHost'] == null ? null : map['healthCheckHost'] as String,
      healthCheckHttpCode: map['healthCheckHttpCode'] == null ? null : map['healthCheckHttpCode'] as String,
      healthCheckInterval: map['healthCheckInterval'] == null ? null : map['healthCheckInterval'] as int,
      healthCheckMethod: map['healthCheckMethod'] == null ? null : map['healthCheckMethod'] as String,
      healthCheckPort: map['healthCheckPort'] == null ? null : map['healthCheckPort'] as int,
      healthCheckSuccTimes: map['healthCheckSuccTimes'] == null ? null : map['healthCheckSuccTimes'] as int,
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : map['healthCheckTimeout'] as int,
      healthCheckType: map['healthCheckType'] == null ? null : map['healthCheckType'] as String,
      healthCheckUri: map['healthCheckUri'] == null ? null : map['healthCheckUri'] as String,
      remarks: map['remarks'] == null ? null : map['remarks'] as String,
      servicePort: map['servicePort'] as int,
      targetPort: map['targetPort'] as int,
    );
  }
}

