// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_health_check_template_health_check_template_args_doc}
/// The set of arguments for HealthCheckTemplate.
/// {@endtemplate}
/// {@macro pulumi_alb_health_check_template_health_check_template_args_doc}
class HealthCheckTemplateArgs {
  /// Whether to PreCheck only this request, value:
  /// true: sends a check request and does not create a resource. Check items include whether required parameters, request format, and business restrictions have been filled in. If the check fails, the corresponding error is returned. If the check passes, the error code DryRunOperation is returned.
  /// false (default): Sends a normal request, returns the http_2xx status code after the check, and directly performs the operation.
  final pulumi.Input<bool>? dryRun;

  /// The HTTP code of the health check. The default value is http_2xx. The normal HTTP code for health check. Separate multiple codes with commas (,). Valid values: http_2xx, http_3xx, http_4xx, or http_5xx.
  final pulumi.Input<List<String>>? healthCheckCodes;

  /// The number of the port that is used for health checks.  Valid values: 0 to 65535.  Default value: 0. This value indicates that the backend server is used for health checks.
  final pulumi.Input<int>? healthCheckConnectPort;

  /// The domain name that is used for health checks. Valid values:  $SERVER_IP (default value): The private IP addresses of backend servers. If the $_ip parameter is set or the HealthCheckHost parameter is not set, SLB uses the private IP addresses of backend servers as the domain names for health checks.  domain: The domain name must be 1 to 80 characters in length, and can contain only letters, digits, periods (.),and hyphens (-).
  final pulumi.Input<String>? healthCheckHost;

  /// The version of the HTTP protocol.  Valid values: HTTP 1.0 and HTTP 1.1.  Default value: HTTP 1.1.
  final pulumi.Input<String>? healthCheckHttpVersion;

  /// The time interval between two consecutive health checks.  Valid values: 1 to 50. Unit: seconds.  Default value: 2.
  final pulumi.Input<int>? healthCheckInterval;

  /// The health check method.  Valid values: GET and HEAD.  Default value: HEAD.
  final pulumi.Input<String>? healthCheckMethod;

  /// The URL that is used for health checks.  The URL must be 1 to 80 characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), percent signs (%), question marks (?), number signs (#), and ampersands (&). The URL can also contain the following extended characters: _ ; ~ ! ( )* [ ] @ $ ^ : ' , +. The URL must start with a forward slash (/).
  final pulumi.Input<String>? healthCheckPath;

  /// The protocol used for the health check. Value:
  /// HTTP (default): Sends a HEAD or GET request to simulate the browser's access behavior to check whether the server application is healthy.
  /// HTTPS: Sends a HEAD or GET request to simulate the browser's access behavior to check whether the server application is healthy. (Data encryption is more secure than HTTP.)
  /// TCP: Sends a SYN handshake packet to check whether the server port is alive.
  /// gRPC: Check whether the server application is healthy by sending a POST or GET request.
  final pulumi.Input<String>? healthCheckProtocol;

  /// The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String> healthCheckTemplateName;

  /// The timeout period of a health check response. If the backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the health check fails.  Valid values: 1 to 300. Unit: seconds.  Default value: 5.
  final pulumi.Input<int>? healthCheckTimeout;

  /// The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy (from fail to success).
  final pulumi.Input<int>? healthyThreshold;

  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;

  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Specifies the number of times that an healthy backend server must consecutively fail health checks before it is declared unhealthy (from success to fail).
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HealthCheckTemplateArgs].
  /// [dryRun] Whether to PreCheck only this request, value:
  /// [healthCheckCodes] The HTTP code of the health check. The default value is http_2xx. The normal HTTP code for health check. Separate multiple codes with commas (,). Valid values: http_2xx, http_3xx, http_4xx, or http_5xx.
  /// [healthCheckConnectPort] The number of the port that is used for health checks.  Valid values: 0 to 65535.  Default value: 0. This value indicates that the backend server is used for health checks.
  /// [healthCheckHost] The domain name that is used for health checks. Valid values:  $SERVER_IP (default value): The private IP addresses of backend servers. If the $_ip parameter is set or the HealthCheckHost parameter is not set, SLB uses the private IP addresses of backend servers as the domain names for health checks.  domain: The domain name must be 1 to 80 characters in length, and can contain only letters, digits, periods (.),and hyphens (-).
  /// [healthCheckHttpVersion] The version of the HTTP protocol.  Valid values: HTTP 1.0 and HTTP 1.1.  Default value: HTTP 1.1.
  /// [healthCheckInterval] The time interval between two consecutive health checks.  Valid values: 1 to 50. Unit: seconds.  Default value: 2.
  /// [healthCheckMethod] The health check method.  Valid values: GET and HEAD.  Default value: HEAD.
  /// [healthCheckPath] The URL that is used for health checks.  The URL must be 1 to 80 characters in length, and can contain letters, digits, hyphens (-), forward slashes (/), periods (.), percent signs (%), question marks (?), number signs (#), and ampersands (&). The URL can also contain the following extended characters: _ ; ~ ! ( )* [ ] @ $ ^ : ' , +. The URL must start with a forward slash (/).
  /// [healthCheckProtocol] The protocol used for the health check. Value:
  /// [healthCheckTemplateName] The name of the health check template.  The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  /// [healthCheckTimeout] The timeout period of a health check response. If the backend Elastic Compute Service (ECS) instance does not send an expected response within the specified period of time, the health check fails.  Valid values: 1 to 300. Unit: seconds.  Default value: 5.
  /// [healthyThreshold] The number of times that an unhealthy backend server must consecutively pass health checks before it is declared healthy (from fail to success).
  /// [resourceGroupId] The ID of the resource group
  /// [tags] The tag of the resource
  /// [unhealthyThreshold] Specifies the number of times that an healthy backend server must consecutively fail health checks before it is declared unhealthy (from success to fail).
  HealthCheckTemplateArgs({
    this.dryRun,
    this.healthCheckCodes,
    this.healthCheckConnectPort,
    this.healthCheckHost,
    this.healthCheckHttpVersion,
    this.healthCheckInterval,
    this.healthCheckMethod,
    this.healthCheckPath,
    this.healthCheckProtocol,
    required this.healthCheckTemplateName,
    this.healthCheckTimeout,
    this.healthyThreshold,
    this.resourceGroupId,
    this.tags,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'healthCheckCodes': ?healthCheckCodes,
      'healthCheckConnectPort': ?healthCheckConnectPort,
      'healthCheckHost': ?healthCheckHost,
      'healthCheckHttpVersion': ?healthCheckHttpVersion,
      'healthCheckInterval': ?healthCheckInterval,
      'healthCheckMethod': ?healthCheckMethod,
      'healthCheckPath': ?healthCheckPath,
      'healthCheckProtocol': ?healthCheckProtocol,
      'healthCheckTemplateName': healthCheckTemplateName,
      'healthCheckTimeout': ?healthCheckTimeout,
      'healthyThreshold': ?healthyThreshold,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HealthCheckTemplateArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckTemplateArgs(
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      healthCheckCodes: (() {
        final guardedValue = map['healthCheckCodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      healthCheckConnectPort: (() {
        final guardedValue = map['healthCheckConnectPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheckHost: (() {
        final guardedValue = map['healthCheckHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckHttpVersion: (() {
        final guardedValue = map['healthCheckHttpVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckInterval: (() {
        final guardedValue = map['healthCheckInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthCheckMethod: (() {
        final guardedValue = map['healthCheckMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckPath: (() {
        final guardedValue = map['healthCheckPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckProtocol: (() {
        final guardedValue = map['healthCheckProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheckTemplateName: pulumi.Input.fromValue(
        map['healthCheckTemplateName'] as String,
      ),
      healthCheckTimeout: (() {
        final guardedValue = map['healthCheckTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      healthyThreshold: (() {
        final guardedValue = map['healthyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      unhealthyThreshold: (() {
        final guardedValue = map['unhealthyThreshold'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
