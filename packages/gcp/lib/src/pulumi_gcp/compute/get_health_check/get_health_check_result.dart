// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_health_check_grpc_health_check/get_health_check_grpc_health_check.dart';
import '../get_health_check_grpc_tls_health_check/get_health_check_grpc_tls_health_check.dart';
import '../get_health_check_http2_health_check/get_health_check_http2_health_check.dart';
import '../get_health_check_http_health_check/get_health_check_http_health_check.dart';
import '../get_health_check_https_health_check/get_health_check_https_health_check.dart';
import '../get_health_check_log_config/get_health_check_log_config.dart';
import '../get_health_check_ssl_health_check/get_health_check_ssl_health_check.dart';
import '../get_health_check_tcp_health_check/get_health_check_tcp_health_check.dart';

/// Result data returned by getHealthCheck.
class GetHealthCheckResult {
  final int checkIntervalSec;
  final String creationTimestamp;
  final String description;
  final List<GetHealthCheckGrpcHealthCheck> grpcHealthChecks;
  final List<GetHealthCheckGrpcTlsHealthCheck> grpcTlsHealthChecks;
  final int healthyThreshold;
  final List<GetHealthCheckHttp2HealthCheck> http2HealthChecks;
  final List<GetHealthCheckHttpHealthCheck> httpHealthChecks;
  final List<GetHealthCheckHttpsHealthCheck> httpsHealthChecks;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetHealthCheckLogConfig> logConfigs;
  final String name;
  final String? project;
  final String selfLink;
  final List<String> sourceRegions;
  final List<GetHealthCheckSslHealthCheck> sslHealthChecks;
  final List<GetHealthCheckTcpHealthCheck> tcpHealthChecks;
  final int timeoutSec;
  final String type;
  final int unhealthyThreshold;

  GetHealthCheckResult({
    required this.checkIntervalSec,
    required this.creationTimestamp,
    required this.description,
    required this.grpcHealthChecks,
    required this.grpcTlsHealthChecks,
    required this.healthyThreshold,
    required this.http2HealthChecks,
    required this.httpHealthChecks,
    required this.httpsHealthChecks,
    required this.id,
    required this.logConfigs,
    required this.name,
    this.project,
    required this.selfLink,
    required this.sourceRegions,
    required this.sslHealthChecks,
    required this.tcpHealthChecks,
    required this.timeoutSec,
    required this.type,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkIntervalSec'] = checkIntervalSec;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['grpcHealthChecks'] =
        Input.encodeList<GetHealthCheckGrpcHealthCheck, Map<String, dynamic>>(
            grpcHealthChecks, (value) => value.toMap());
    map['grpcTlsHealthChecks'] = Input.encodeList<
        GetHealthCheckGrpcTlsHealthCheck,
        Map<String, dynamic>>(grpcTlsHealthChecks, (value) => value.toMap());
    map['healthyThreshold'] = healthyThreshold;
    map['http2HealthChecks'] =
        Input.encodeList<GetHealthCheckHttp2HealthCheck, Map<String, dynamic>>(
            http2HealthChecks, (value) => value.toMap());
    map['httpHealthChecks'] =
        Input.encodeList<GetHealthCheckHttpHealthCheck, Map<String, dynamic>>(
            httpHealthChecks, (value) => value.toMap());
    map['httpsHealthChecks'] =
        Input.encodeList<GetHealthCheckHttpsHealthCheck, Map<String, dynamic>>(
            httpsHealthChecks, (value) => value.toMap());
    map['id'] = id;
    map['logConfigs'] =
        Input.encodeList<GetHealthCheckLogConfig, Map<String, dynamic>>(
            logConfigs, (value) => value.toMap());
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['selfLink'] = selfLink;
    map['sourceRegions'] = sourceRegions;
    map['sslHealthChecks'] =
        Input.encodeList<GetHealthCheckSslHealthCheck, Map<String, dynamic>>(
            sslHealthChecks, (value) => value.toMap());
    map['tcpHealthChecks'] =
        Input.encodeList<GetHealthCheckTcpHealthCheck, Map<String, dynamic>>(
            tcpHealthChecks, (value) => value.toMap());
    map['timeoutSec'] = timeoutSec;
    map['type'] = type;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory GetHealthCheckResult.fromMap(Map<String, dynamic> map) {
    return GetHealthCheckResult(
      checkIntervalSec: map['checkIntervalSec'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      grpcHealthChecks: Input.decodeList<GetHealthCheckGrpcHealthCheck>(
          map['grpcHealthChecks'],
          (value) => GetHealthCheckGrpcHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      grpcTlsHealthChecks: Input.decodeList<GetHealthCheckGrpcTlsHealthCheck>(
          map['grpcTlsHealthChecks'],
          (value) => GetHealthCheckGrpcTlsHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      healthyThreshold: map['healthyThreshold'] as int,
      http2HealthChecks: Input.decodeList<GetHealthCheckHttp2HealthCheck>(
          map['http2HealthChecks'],
          (value) => GetHealthCheckHttp2HealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpHealthChecks: Input.decodeList<GetHealthCheckHttpHealthCheck>(
          map['httpHealthChecks'],
          (value) => GetHealthCheckHttpHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpsHealthChecks: Input.decodeList<GetHealthCheckHttpsHealthCheck>(
          map['httpsHealthChecks'],
          (value) => GetHealthCheckHttpsHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      logConfigs: Input.decodeList<GetHealthCheckLogConfig>(
          map['logConfigs'],
          (value) => GetHealthCheckLogConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      selfLink: map['selfLink'] as String,
      sourceRegions: (map['sourceRegions'] as List).cast<String>(),
      sslHealthChecks: Input.decodeList<GetHealthCheckSslHealthCheck>(
          map['sslHealthChecks'],
          (value) => GetHealthCheckSslHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      tcpHealthChecks: Input.decodeList<GetHealthCheckTcpHealthCheck>(
          map['tcpHealthChecks'],
          (value) => GetHealthCheckTcpHealthCheck.fromMap(
              (value as Map).cast<String, dynamic>())),
      timeoutSec: map['timeoutSec'] as int,
      type: map['type'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
