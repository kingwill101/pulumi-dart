// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpchealth_check_compute_v1.dart';
import 'health_check_log_config_compute_v1.dart';
import 'health_check_type_compute_v1.dart';
import 'http2_health_check_compute_v1.dart';
import 'httphealth_check_compute_v1.dart';
import 'httpshealth_check_compute_v1.dart';
import 'sslhealth_check_compute_v1.dart';
import 'tcphealth_check_compute_v1.dart';

/// {@template pulumi_compute_v1_health_check_compute_v1_args_doc}
/// The set of arguments for HealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_health_check_compute_v1_args_doc}
class HealthCheckComputeV1Args {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final pulumi.Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<GRPCHealthCheckComputeV1>? grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  final pulumi.Input<HTTP2HealthCheckComputeV1>? http2HealthCheck;
  final pulumi.Input<HTTPHealthCheckComputeV1>? httpHealthCheck;
  final pulumi.Input<HTTPSHealthCheckComputeV1>? httpsHealthCheck;

  /// Type of the resource.
  final pulumi.Input<String>? kind;

  /// Configure logging on this health check.
  final pulumi.Input<HealthCheckLogConfigComputeV1>? logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  final pulumi.Input<SSLHealthCheckComputeV1>? sslHealthCheck;
  final pulumi.Input<TCPHealthCheckComputeV1>? tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final pulumi.Input<HealthCheckTypeComputeV1>? type;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HealthCheckComputeV1Args].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5 seconds.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcHealthCheck] Optional.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  /// [http2HealthCheck] Optional.
  /// [httpHealthCheck] Optional.
  /// [httpsHealthCheck] Optional.
  /// [kind] Type of the resource.
  /// [logConfig] Configure logging on this health check.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [sslHealthCheck] Optional.
  /// [tcpHealthCheck] Optional.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  HealthCheckComputeV1Args({
    int? checkIntervalSec,
    String? description,
    GRPCHealthCheckComputeV1? grpcHealthCheck,
    int? healthyThreshold,
    HTTP2HealthCheckComputeV1? http2HealthCheck,
    HTTPHealthCheckComputeV1? httpHealthCheck,
    HTTPSHealthCheckComputeV1? httpsHealthCheck,
    String? kind,
    HealthCheckLogConfigComputeV1? logConfig,
    String? name,
    String? project,
    String? requestId,
    SSLHealthCheckComputeV1? sslHealthCheck,
    TCPHealthCheckComputeV1? tcpHealthCheck,
    int? timeoutSec,
    HealthCheckTypeComputeV1? type,
    int? unhealthyThreshold,
  })  : checkIntervalSec = pulumi.Input.asOptionalInput<int>(checkIntervalSec),
        description = pulumi.Input.asOptionalInput<String>(description),
        grpcHealthCheck =
            pulumi.Input.asOptionalInput<GRPCHealthCheckComputeV1>(
                grpcHealthCheck),
        healthyThreshold = pulumi.Input.asOptionalInput<int>(healthyThreshold),
        http2HealthCheck =
            pulumi.Input.asOptionalInput<HTTP2HealthCheckComputeV1>(
                http2HealthCheck),
        httpHealthCheck =
            pulumi.Input.asOptionalInput<HTTPHealthCheckComputeV1>(
                httpHealthCheck),
        httpsHealthCheck =
            pulumi.Input.asOptionalInput<HTTPSHealthCheckComputeV1>(
                httpsHealthCheck),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        logConfig = pulumi.Input.asOptionalInput<HealthCheckLogConfigComputeV1>(
            logConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sslHealthCheck = pulumi.Input.asOptionalInput<SSLHealthCheckComputeV1>(
            sslHealthCheck),
        tcpHealthCheck = pulumi.Input.asOptionalInput<TCPHealthCheckComputeV1>(
            tcpHealthCheck),
        timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
        type = pulumi.Input.asOptionalInput<HealthCheckTypeComputeV1>(type),
        unhealthyThreshold =
            pulumi.Input.asOptionalInput<int>(unhealthyThreshold);

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
          GRPCHealthCheckComputeV1,
          Map<String, dynamic>>(grpcHealthCheckValue, (value) => value.toMap());
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final http2HealthCheckValue = http2HealthCheck;
    if (http2HealthCheckValue != null) {
      map['http2HealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HTTP2HealthCheckComputeV1, Map<String, dynamic>>(
          http2HealthCheckValue, (value) => value.toMap());
    }
    final httpHealthCheckValue = httpHealthCheck;
    if (httpHealthCheckValue != null) {
      map['httpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          HTTPHealthCheckComputeV1,
          Map<String, dynamic>>(httpHealthCheckValue, (value) => value.toMap());
    }
    final httpsHealthCheckValue = httpsHealthCheck;
    if (httpsHealthCheckValue != null) {
      map['httpsHealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HTTPSHealthCheckComputeV1, Map<String, dynamic>>(
          httpsHealthCheckValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<
          HealthCheckLogConfigComputeV1,
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
          SSLHealthCheckComputeV1,
          Map<String, dynamic>>(sslHealthCheckValue, (value) => value.toMap());
    }
    final tcpHealthCheckValue = tcpHealthCheck;
    if (tcpHealthCheckValue != null) {
      map['tcpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          TCPHealthCheckComputeV1,
          Map<String, dynamic>>(tcpHealthCheckValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] =
          pulumi.Input.mapOptionalInputValue<HealthCheckTypeComputeV1, String>(
              typeValue, (value) => value.value);
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory HealthCheckComputeV1Args.fromMap(Map<String, dynamic> map) {
    return HealthCheckComputeV1Args(
      checkIntervalSec: map['checkIntervalSec'] == null
          ? null
          : map['checkIntervalSec'] as int,
      description:
          map['description'] == null ? null : map['description'] as String,
      grpcHealthCheck: map['grpcHealthCheck'] == null
          ? null
          : GRPCHealthCheckComputeV1.fromMap(
              (map['grpcHealthCheck'] as Map).cast<String, dynamic>()),
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      http2HealthCheck: map['http2HealthCheck'] == null
          ? null
          : HTTP2HealthCheckComputeV1.fromMap(
              (map['http2HealthCheck'] as Map).cast<String, dynamic>()),
      httpHealthCheck: map['httpHealthCheck'] == null
          ? null
          : HTTPHealthCheckComputeV1.fromMap(
              (map['httpHealthCheck'] as Map).cast<String, dynamic>()),
      httpsHealthCheck: map['httpsHealthCheck'] == null
          ? null
          : HTTPSHealthCheckComputeV1.fromMap(
              (map['httpsHealthCheck'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      logConfig: map['logConfig'] == null
          ? null
          : HealthCheckLogConfigComputeV1.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sslHealthCheck: map['sslHealthCheck'] == null
          ? null
          : SSLHealthCheckComputeV1.fromMap(
              (map['sslHealthCheck'] as Map).cast<String, dynamic>()),
      tcpHealthCheck: map['tcpHealthCheck'] == null
          ? null
          : TCPHealthCheckComputeV1.fromMap(
              (map['tcpHealthCheck'] as Map).cast<String, dynamic>()),
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
      type: map['type'] == null
          ? null
          : HealthCheckTypeComputeV1.fromValue(map['type'] as String),
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
