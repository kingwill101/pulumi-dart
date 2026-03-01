// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EdgeContainerApp resources.
class EdgeContainerAppState {
  /// The time when the application was created.
  final pulumi.Input<String>? createTime;
  /// The application name must start with a lowercase letter. Lowercase letters, numbers, and bars are supported. The length is limited to 6 to 128 characters.
  final pulumi.Input<String>? edgeContainerAppName;
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
  final pulumi.Input<int>? servicePort;
  /// The status of the application.
  final pulumi.Input<String>? status;
  /// The server port. Valid values: 1 to 65535.
  final pulumi.Input<int>? targetPort;

  /// Creates a new [EdgeContainerAppState].
  /// [createTime] The time when the application was created.
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
  /// [status] The status of the application.
  /// [targetPort] The server port. Valid values: 1 to 65535.
  EdgeContainerAppState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? edgeContainerAppName,
    pulumi.Output<int>? healthCheckFailTimes,
    pulumi.Output<String>? healthCheckHost,
    pulumi.Output<String>? healthCheckHttpCode,
    pulumi.Output<int>? healthCheckInterval,
    pulumi.Output<String>? healthCheckMethod,
    pulumi.Output<int>? healthCheckPort,
    pulumi.Output<int>? healthCheckSuccTimes,
    pulumi.Output<int>? healthCheckTimeout,
    pulumi.Output<String>? healthCheckType,
    pulumi.Output<String>? healthCheckUri,
    pulumi.Output<String>? remarks,
    pulumi.Output<int>? servicePort,
    pulumi.Output<String>? status,
    pulumi.Output<int>? targetPort,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      edgeContainerAppName = pulumi.Input.asOptionalInput<String>(edgeContainerAppName),
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
      servicePort = pulumi.Input.asOptionalInput<int>(servicePort),
      status = pulumi.Input.asOptionalInput<String>(status),
      targetPort = pulumi.Input.asOptionalInput<int>(targetPort);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'edgeContainerAppName': ?edgeContainerAppName,
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
      'servicePort': ?servicePort,
      'status': ?status,
      'targetPort': ?targetPort,
    };
  }

  factory EdgeContainerAppState.fromMap(Map<String, dynamic> map) {
    return EdgeContainerAppState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      edgeContainerAppName: map['edgeContainerAppName'] == null ? null : pulumi.Output.create<String>(map['edgeContainerAppName'] as String),
      healthCheckFailTimes: map['healthCheckFailTimes'] == null ? null : pulumi.Output.create<int>(map['healthCheckFailTimes'] as int),
      healthCheckHost: map['healthCheckHost'] == null ? null : pulumi.Output.create<String>(map['healthCheckHost'] as String),
      healthCheckHttpCode: map['healthCheckHttpCode'] == null ? null : pulumi.Output.create<String>(map['healthCheckHttpCode'] as String),
      healthCheckInterval: map['healthCheckInterval'] == null ? null : pulumi.Output.create<int>(map['healthCheckInterval'] as int),
      healthCheckMethod: map['healthCheckMethod'] == null ? null : pulumi.Output.create<String>(map['healthCheckMethod'] as String),
      healthCheckPort: map['healthCheckPort'] == null ? null : pulumi.Output.create<int>(map['healthCheckPort'] as int),
      healthCheckSuccTimes: map['healthCheckSuccTimes'] == null ? null : pulumi.Output.create<int>(map['healthCheckSuccTimes'] as int),
      healthCheckTimeout: map['healthCheckTimeout'] == null ? null : pulumi.Output.create<int>(map['healthCheckTimeout'] as int),
      healthCheckType: map['healthCheckType'] == null ? null : pulumi.Output.create<String>(map['healthCheckType'] as String),
      healthCheckUri: map['healthCheckUri'] == null ? null : pulumi.Output.create<String>(map['healthCheckUri'] as String),
      remarks: map['remarks'] == null ? null : pulumi.Output.create<String>(map['remarks'] as String),
      servicePort: map['servicePort'] == null ? null : pulumi.Output.create<int>(map['servicePort'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targetPort: map['targetPort'] == null ? null : pulumi.Output.create<int>(map['targetPort'] as int),
    );
  }
}

