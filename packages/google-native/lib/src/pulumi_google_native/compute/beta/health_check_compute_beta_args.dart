// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpchealth_check_compute_beta.dart';
import 'health_check_log_config_compute_beta.dart';
import 'health_check_type_compute_beta.dart';
import 'http2_health_check_compute_beta.dart';
import 'httphealth_check_compute_beta.dart';
import 'httpshealth_check_compute_beta.dart';
import 'sslhealth_check_compute_beta.dart';
import 'tcphealth_check_compute_beta.dart';

/// The set of arguments for HealthCheck.
class HealthCheckComputeBetaArgs {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final pulumi.Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<GRPCHealthCheckComputeBeta>? grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  final pulumi.Input<HTTP2HealthCheckComputeBeta>? http2HealthCheck;
  final pulumi.Input<HTTPHealthCheckComputeBeta>? httpHealthCheck;
  final pulumi.Input<HTTPSHealthCheckComputeBeta>? httpsHealthCheck;

  /// Type of the resource.
  final pulumi.Input<String>? kind;

  /// Configure logging on this health check.
  final pulumi.Input<HealthCheckLogConfigComputeBeta>? logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<SSLHealthCheckComputeBeta>? sslHealthCheck;
  final pulumi.Input<TCPHealthCheckComputeBeta>? tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final pulumi.Input<HealthCheckTypeComputeBeta>? type;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  HealthCheckComputeBetaArgs({
    this.checkIntervalSec,
    this.description,
    this.grpcHealthCheck,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.kind,
    this.logConfig,
    this.name,
    this.project,
    this.requestId,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
    this.type,
    this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final checkIntervalSecValue = checkIntervalSec;
    if (checkIntervalSecValue != null) {
      map['checkIntervalSec'] = checkIntervalSecValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final grpcHealthCheckValue = grpcHealthCheck;
    if (grpcHealthCheckValue != null) {
      map['grpcHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          GRPCHealthCheckComputeBeta,
          Map<String, dynamic>>(grpcHealthCheckValue, (value) => value.toMap());
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final http2HealthCheckValue = http2HealthCheck;
    if (http2HealthCheckValue != null) {
      map['http2HealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HTTP2HealthCheckComputeBeta, Map<String, dynamic>>(
          http2HealthCheckValue, (value) => value.toMap());
    }
    final httpHealthCheckValue = httpHealthCheck;
    if (httpHealthCheckValue != null) {
      map['httpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          HTTPHealthCheckComputeBeta,
          Map<String, dynamic>>(httpHealthCheckValue, (value) => value.toMap());
    }
    final httpsHealthCheckValue = httpsHealthCheck;
    if (httpsHealthCheckValue != null) {
      map['httpsHealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HTTPSHealthCheckComputeBeta, Map<String, dynamic>>(
          httpsHealthCheckValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckLogConfigComputeBeta,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final sslHealthCheckValue = sslHealthCheck;
    if (sslHealthCheckValue != null) {
      map['sslHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          SSLHealthCheckComputeBeta,
          Map<String, dynamic>>(sslHealthCheckValue, (value) => value.toMap());
    }
    final tcpHealthCheckValue = tcpHealthCheck;
    if (tcpHealthCheckValue != null) {
      map['tcpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          TCPHealthCheckComputeBeta,
          Map<String, dynamic>>(tcpHealthCheckValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckTypeComputeBeta,
          String>(typeValue, (value) => value.value);
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory HealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckComputeBetaArgs(
      checkIntervalSec:
          pulumi.Input.asOptionalInput<int>(map['checkIntervalSec']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      grpcHealthCheck: pulumi.Input.asOptionalInput<GRPCHealthCheckComputeBeta>(
          map['grpcHealthCheck']),
      healthyThreshold:
          pulumi.Input.asOptionalInput<int>(map['healthyThreshold']),
      http2HealthCheck:
          pulumi.Input.asOptionalInput<HTTP2HealthCheckComputeBeta>(
              map['http2HealthCheck']),
      httpHealthCheck: pulumi.Input.asOptionalInput<HTTPHealthCheckComputeBeta>(
          map['httpHealthCheck']),
      httpsHealthCheck:
          pulumi.Input.asOptionalInput<HTTPSHealthCheckComputeBeta>(
              map['httpsHealthCheck']),
      kind: pulumi.Input.asOptionalInput<String>(map['kind']),
      logConfig: pulumi.Input.asOptionalInput<HealthCheckLogConfigComputeBeta>(
          map['logConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      sslHealthCheck: pulumi.Input.asOptionalInput<SSLHealthCheckComputeBeta>(
          map['sslHealthCheck']),
      tcpHealthCheck: pulumi.Input.asOptionalInput<TCPHealthCheckComputeBeta>(
          map['tcpHealthCheck']),
      timeoutSec: pulumi.Input.asOptionalInput<int>(map['timeoutSec']),
      type:
          pulumi.Input.asOptionalInput<HealthCheckTypeComputeBeta>(map['type']),
      unhealthyThreshold:
          pulumi.Input.asOptionalInput<int>(map['unhealthyThreshold']),
    );
  }
}
