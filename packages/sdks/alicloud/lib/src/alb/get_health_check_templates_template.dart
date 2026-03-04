// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHealthCheckTemplatesTemplate {
  /// The HTTP status code that indicates a successful health check.
  final pulumi.Input<List<String>> healthCheckCodes;

  /// The number of the port that is used for health checks.  Valid values: `0` to `65535`.  Default value:` 0`. This default value indicates that the backend server is used for health checks.
  final pulumi.Input<int> healthCheckConnectPort;

  /// The domain name that is used for health checks. Default value:  `$SERVER_IP`. The domain name must be 1 to 80 characters in length.
  final pulumi.Input<String> healthCheckHost;

  /// The version of the HTTP protocol.  Valid values: `HTTP1.0` and `HTTP1.1`.  Default value: `HTTP1.1`.
  final pulumi.Input<String> healthCheckHttpVersion;

  /// The time interval between two consecutive health checks.  Valid values: `1` to `50`. Unit: seconds.  Default value: `2`.
  final pulumi.Input<int> healthCheckInterval;

  /// The health check method.  Valid values: `GET` and `HEAD`.  Default value: `HEAD`.
  final pulumi.Input<String> healthCheckMethod;

  /// The URL that is used for health checks.  The URL must be 1 to 80 characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), percent signs (%), question marks (?), number signs (#), and ampersands (&). The URL can also contain the following extended characters: ` _ ; ~ ! ( )* [ ] @ $ ^ : ' , +. The URL must start with a forward slash (/)`.
  final pulumi.Input<String> healthCheckPath;

  /// The protocol that is used for health checks.  Valid values: HTTP and TCP.  Default value: HTTP.
  final pulumi.Input<String> healthCheckProtocol;

  /// The ID of the resource.
  final pulumi.Input<String> healthCheckTemplateId;

  /// The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String> healthCheckTemplateName;

  /// The timeout period of a health check response. If the backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the health check fails.  Valid values: `1` to `300`. Unit: seconds.  Default value: `5`.
  final pulumi.Input<int> healthCheckTimeout;

  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy (from fail to success). Valid values: `2` to `10`.  Default value: `3`. Unit: seconds.
  final pulumi.Input<int> healthyThreshold;

  /// The ID of the Health Check Template.
  final pulumi.Input<String> id;

  /// The number of times that an healthy backend server must consecutively fail health checks before it is declared unhealthy (from success to fail). Valid values: `2` to `10`.  Default value: `3`. Unit: seconds.
  final pulumi.Input<int> unhealthyThreshold;

  /// Creates a new [GetHealthCheckTemplatesTemplate].
  /// [healthCheckCodes] The HTTP status code that indicates a successful health check.
  /// [healthCheckConnectPort] The number of the port that is used for health checks.  Valid values: `0` to `65535`.  Default value:` 0`. This default value indicates that the backend server is used for health checks.
  /// [healthCheckHost] The domain name that is used for health checks. Default value:  `$SERVER_IP`. The domain name must be 1 to 80 characters in length.
  /// [healthCheckHttpVersion] The version of the HTTP protocol.  Valid values: `HTTP1.0` and `HTTP1.1`.  Default value: `HTTP1.1`.
  /// [healthCheckInterval] The time interval between two consecutive health checks.  Valid values: `1` to `50`. Unit: seconds.  Default value: `2`.
  /// [healthCheckMethod] The health check method.  Valid values: `GET` and `HEAD`.  Default value: `HEAD`.
  /// [healthCheckPath] The URL that is used for health checks.  The URL must be 1 to 80 characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), percent signs (%), question marks (?), number signs (#), and ampersands (&). The URL can also contain the following extended characters: ` _ ; ~ ! ( )* [ ] @ $ ^ : ' , +. The URL must start with a forward slash (/)`.
  /// [healthCheckProtocol] The protocol that is used for health checks.  Valid values: HTTP and TCP.  Default value: HTTP.
  /// [healthCheckTemplateId] The ID of the resource.
  /// [healthCheckTemplateName] The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  /// [healthCheckTimeout] The timeout period of a health check response. If the backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the health check fails.  Valid values: `1` to `300`. Unit: seconds.  Default value: `5`.
  /// [healthyThreshold] The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy (from fail to success). Valid values: `2` to `10`.  Default value: `3`. Unit: seconds.
  /// [id] The ID of the Health Check Template.
  /// [unhealthyThreshold] The number of times that an healthy backend server must consecutively fail health checks before it is declared unhealthy (from success to fail). Valid values: `2` to `10`.  Default value: `3`. Unit: seconds.
  GetHealthCheckTemplatesTemplate({
    required this.healthCheckCodes,
    required this.healthCheckConnectPort,
    required this.healthCheckHost,
    required this.healthCheckHttpVersion,
    required this.healthCheckInterval,
    required this.healthCheckMethod,
    required this.healthCheckPath,
    required this.healthCheckProtocol,
    required this.healthCheckTemplateId,
    required this.healthCheckTemplateName,
    required this.healthCheckTimeout,
    required this.healthyThreshold,
    required this.id,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckCodes': healthCheckCodes,
      'healthCheckConnectPort': healthCheckConnectPort,
      'healthCheckHost': healthCheckHost,
      'healthCheckHttpVersion': healthCheckHttpVersion,
      'healthCheckInterval': healthCheckInterval,
      'healthCheckMethod': healthCheckMethod,
      'healthCheckPath': healthCheckPath,
      'healthCheckProtocol': healthCheckProtocol,
      'healthCheckTemplateId': healthCheckTemplateId,
      'healthCheckTemplateName': healthCheckTemplateName,
      'healthCheckTimeout': healthCheckTimeout,
      'healthyThreshold': healthyThreshold,
      'id': id,
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetHealthCheckTemplatesTemplate.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckTemplatesTemplate(
      healthCheckCodes: pulumi.Input.fromValue(
        (map['healthCheckCodes'] as List).cast<String>(),
      ),
      healthCheckConnectPort: pulumi.Input.fromValue(
        map['healthCheckConnectPort'] as int,
      ),
      healthCheckHost: pulumi.Input.fromValue(map['healthCheckHost'] as String),
      healthCheckHttpVersion: pulumi.Input.fromValue(
        map['healthCheckHttpVersion'] as String,
      ),
      healthCheckInterval: pulumi.Input.fromValue(
        map['healthCheckInterval'] as int,
      ),
      healthCheckMethod: pulumi.Input.fromValue(
        map['healthCheckMethod'] as String,
      ),
      healthCheckPath: pulumi.Input.fromValue(map['healthCheckPath'] as String),
      healthCheckProtocol: pulumi.Input.fromValue(
        map['healthCheckProtocol'] as String,
      ),
      healthCheckTemplateId: pulumi.Input.fromValue(
        map['healthCheckTemplateId'] as String,
      ),
      healthCheckTemplateName: pulumi.Input.fromValue(
        map['healthCheckTemplateName'] as String,
      ),
      healthCheckTimeout: pulumi.Input.fromValue(
        map['healthCheckTimeout'] as int,
      ),
      healthyThreshold: pulumi.Input.fromValue(map['healthyThreshold'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      unhealthyThreshold: pulumi.Input.fromValue(
        map['unhealthyThreshold'] as int,
      ),
    );
  }
}
