// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_health_check_grpc_health_check/region_health_check_grpc_health_check.dart';
import '../region_health_check_grpc_tls_health_check/region_health_check_grpc_tls_health_check.dart';
import '../region_health_check_http2_health_check/region_health_check_http2_health_check.dart';
import '../region_health_check_http_health_check/region_health_check_http_health_check.dart';
import '../region_health_check_https_health_check/region_health_check_https_health_check.dart';
import '../region_health_check_log_config/region_health_check_log_config.dart';
import '../region_health_check_ssl_health_check/region_health_check_ssl_health_check.dart';
import '../region_health_check_tcp_health_check/region_health_check_tcp_health_check.dart';

/// The set of arguments for RegionHealthCheck.
class RegionHealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  final Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  final Input<String>? description;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckGrpcHealthCheck>? grpcHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckGrpcTlsHealthCheck>? grpcTlsHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  final Input<int>? healthyThreshold;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckHttp2HealthCheck>? http2HealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckHttpHealthCheck>? httpHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckHttpsHealthCheck>? httpsHealthCheck;

  /// Configure logging on this health check.
  /// Structure is documented below.
  final Input<RegionHealthCheckLogConfig>? logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Region in which the created health check should reside.
  /// If it is not provided, the provider region is used.
  final Input<String>? region;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckSslHealthCheck>? sslHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  final Input<RegionHealthCheckTcpHealthCheck>? tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  final Input<int>? timeoutSec;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  final Input<int>? unhealthyThreshold;

  RegionHealthCheckArgs({
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
    this.region,
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
      map['grpcHealthCheck'] = Input.mapOptionalInputValue<
          RegionHealthCheckGrpcHealthCheck,
          Map<String, dynamic>>(grpcHealthCheckValue, (value) => value.toMap());
    }
    final grpcTlsHealthCheckValue = grpcTlsHealthCheck;
    if (grpcTlsHealthCheckValue != null) {
      map['grpcTlsHealthCheck'] = Input.mapOptionalInputValue<
              RegionHealthCheckGrpcTlsHealthCheck, Map<String, dynamic>>(
          grpcTlsHealthCheckValue, (value) => value.toMap());
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final http2HealthCheckValue = http2HealthCheck;
    if (http2HealthCheckValue != null) {
      map['http2HealthCheck'] = Input.mapOptionalInputValue<
              RegionHealthCheckHttp2HealthCheck, Map<String, dynamic>>(
          http2HealthCheckValue, (value) => value.toMap());
    }
    final httpHealthCheckValue = httpHealthCheck;
    if (httpHealthCheckValue != null) {
      map['httpHealthCheck'] = Input.mapOptionalInputValue<
          RegionHealthCheckHttpHealthCheck,
          Map<String, dynamic>>(httpHealthCheckValue, (value) => value.toMap());
    }
    final httpsHealthCheckValue = httpsHealthCheck;
    if (httpsHealthCheckValue != null) {
      map['httpsHealthCheck'] = Input.mapOptionalInputValue<
              RegionHealthCheckHttpsHealthCheck, Map<String, dynamic>>(
          httpsHealthCheckValue, (value) => value.toMap());
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<RegionHealthCheckLogConfig,
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sslHealthCheckValue = sslHealthCheck;
    if (sslHealthCheckValue != null) {
      map['sslHealthCheck'] = Input.mapOptionalInputValue<
          RegionHealthCheckSslHealthCheck,
          Map<String, dynamic>>(sslHealthCheckValue, (value) => value.toMap());
    }
    final tcpHealthCheckValue = tcpHealthCheck;
    if (tcpHealthCheckValue != null) {
      map['tcpHealthCheck'] = Input.mapOptionalInputValue<
          RegionHealthCheckTcpHealthCheck,
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

  factory RegionHealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return RegionHealthCheckArgs(
      checkIntervalSec: Input.asOptionalInput<int>(map['checkIntervalSec']),
      description: Input.asOptionalInput<String>(map['description']),
      grpcHealthCheck: Input.asOptionalInput<RegionHealthCheckGrpcHealthCheck>(
          map['grpcHealthCheck']),
      grpcTlsHealthCheck:
          Input.asOptionalInput<RegionHealthCheckGrpcTlsHealthCheck>(
              map['grpcTlsHealthCheck']),
      healthyThreshold: Input.asOptionalInput<int>(map['healthyThreshold']),
      http2HealthCheck:
          Input.asOptionalInput<RegionHealthCheckHttp2HealthCheck>(
              map['http2HealthCheck']),
      httpHealthCheck: Input.asOptionalInput<RegionHealthCheckHttpHealthCheck>(
          map['httpHealthCheck']),
      httpsHealthCheck:
          Input.asOptionalInput<RegionHealthCheckHttpsHealthCheck>(
              map['httpsHealthCheck']),
      logConfig:
          Input.asOptionalInput<RegionHealthCheckLogConfig>(map['logConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      sslHealthCheck: Input.asOptionalInput<RegionHealthCheckSslHealthCheck>(
          map['sslHealthCheck']),
      tcpHealthCheck: Input.asOptionalInput<RegionHealthCheckTcpHealthCheck>(
          map['tcpHealthCheck']),
      timeoutSec: Input.asOptionalInput<int>(map['timeoutSec']),
      unhealthyThreshold: Input.asOptionalInput<int>(map['unhealthyThreshold']),
    );
  }
}
