// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../health_check_grpc_health_check/health_check_grpc_health_check.dart';
import '../health_check_grpc_tls_health_check/health_check_grpc_tls_health_check.dart';
import '../health_check_http2_health_check/health_check_http2_health_check.dart';
import '../health_check_http_health_check/health_check_http_health_check.dart';
import '../health_check_https_health_check/health_check_https_health_check.dart';
import '../health_check_log_config/health_check_log_config.dart';
import '../health_check_ssl_health_check/health_check_ssl_health_check.dart';
import '../health_check_tcp_health_check/health_check_tcp_health_check.dart';

/// The set of arguments for HealthCheck.
class HealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final pulumi.Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final pulumi.Input<String>? description;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckGrpcHealthCheck>? grpcHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckGrpcTlsHealthCheck>? grpcTlsHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckHttp2HealthCheck>? http2HealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckHttpHealthCheck>? httpHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckHttpsHealthCheck>? httpsHealthCheck;

  /// Configure logging on this health check.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckLogConfig>? logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The list of cloud regions from which health checks are performed. If
  /// any regions are specified, then exactly 3 regions should be specified.
  /// The region names must be valid names of Google Cloud regions. This can
  /// only be set for global health check. If this list is non-empty, then
  /// there are restrictions on what other health check fields are supported
  /// and what other resources can use this health check:
  /// * SSL, HTTP2, and GRPC protocols are not supported.
  /// * The TCP request field is not supported.
  /// * The proxyHeader field for HTTP, HTTPS, and TCP is not supported.
  /// * The checkIntervalSec field must be at least 30.
  /// * The health check cannot be used with BackendService nor with managed
  /// instance group auto-healing.
  final pulumi.Input<List<String>>? sourceRegions;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckSslHealthCheck>? sslHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<HealthCheckTcpHealthCheck>? tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  HealthCheckArgs({
    this.checkIntervalSec,
    this.description,
    this.grpcHealthCheck,
    this.grpcTlsHealthCheck,
    this.healthyThreshold,
    this.http2HealthCheck,
    this.httpHealthCheck,
    this.httpsHealthCheck,
    this.logConfig,
    this.name,
    this.project,
    this.sourceRegions,
    this.sslHealthCheck,
    this.tcpHealthCheck,
    this.timeoutSec,
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
          HealthCheckGrpcHealthCheck,
          Map<String, dynamic>>(grpcHealthCheckValue, (value) => value.toMap());
    }
    final grpcTlsHealthCheckValue = grpcTlsHealthCheck;
    if (grpcTlsHealthCheckValue != null) {
      map['grpcTlsHealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HealthCheckGrpcTlsHealthCheck, Map<String, dynamic>>(
          grpcTlsHealthCheckValue, (value) => value.toMap());
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final http2HealthCheckValue = http2HealthCheck;
    if (http2HealthCheckValue != null) {
      map['http2HealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HealthCheckHttp2HealthCheck, Map<String, dynamic>>(
          http2HealthCheckValue, (value) => value.toMap());
    }
    final httpHealthCheckValue = httpHealthCheck;
    if (httpHealthCheckValue != null) {
      map['httpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckHttpHealthCheck,
          Map<String, dynamic>>(httpHealthCheckValue, (value) => value.toMap());
    }
    final httpsHealthCheckValue = httpsHealthCheck;
    if (httpsHealthCheckValue != null) {
      map['httpsHealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HealthCheckHttpsHealthCheck, Map<String, dynamic>>(
          httpsHealthCheckValue, (value) => value.toMap());
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckLogConfig,
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
    final sourceRegionsValue = sourceRegions;
    if (sourceRegionsValue != null) {
      map['sourceRegions'] = sourceRegionsValue;
    }
    final sslHealthCheckValue = sslHealthCheck;
    if (sslHealthCheckValue != null) {
      map['sslHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckSslHealthCheck,
          Map<String, dynamic>>(sslHealthCheckValue, (value) => value.toMap());
    }
    final tcpHealthCheckValue = tcpHealthCheck;
    if (tcpHealthCheckValue != null) {
      map['tcpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckTcpHealthCheck,
          Map<String, dynamic>>(tcpHealthCheckValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory HealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckArgs(
      checkIntervalSec:
          pulumi.Input.asOptionalInput<int>(map['checkIntervalSec']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      grpcHealthCheck: pulumi.Input.asOptionalInput<HealthCheckGrpcHealthCheck>(
          map['grpcHealthCheck']),
      grpcTlsHealthCheck:
          pulumi.Input.asOptionalInput<HealthCheckGrpcTlsHealthCheck>(
              map['grpcTlsHealthCheck']),
      healthyThreshold:
          pulumi.Input.asOptionalInput<int>(map['healthyThreshold']),
      http2HealthCheck:
          pulumi.Input.asOptionalInput<HealthCheckHttp2HealthCheck>(
              map['http2HealthCheck']),
      httpHealthCheck: pulumi.Input.asOptionalInput<HealthCheckHttpHealthCheck>(
          map['httpHealthCheck']),
      httpsHealthCheck:
          pulumi.Input.asOptionalInput<HealthCheckHttpsHealthCheck>(
              map['httpsHealthCheck']),
      logConfig:
          pulumi.Input.asOptionalInput<HealthCheckLogConfig>(map['logConfig']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sourceRegions:
          pulumi.Input.asOptionalInput<List<String>>(map['sourceRegions']),
      sslHealthCheck: pulumi.Input.asOptionalInput<HealthCheckSslHealthCheck>(
          map['sslHealthCheck']),
      tcpHealthCheck: pulumi.Input.asOptionalInput<HealthCheckTcpHealthCheck>(
          map['tcpHealthCheck']),
      timeoutSec: pulumi.Input.asOptionalInput<int>(map['timeoutSec']),
      unhealthyThreshold:
          pulumi.Input.asOptionalInput<int>(map['unhealthyThreshold']),
    );
  }
}
