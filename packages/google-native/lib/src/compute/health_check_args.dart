// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpchealth_check.dart';
import 'health_check_log_config.dart';
import 'health_check_type.dart';
import 'http2_health_check.dart';
import 'httphealth_check.dart';
import 'httpshealth_check.dart';
import 'sslhealth_check.dart';
import 'tcphealth_check.dart';
import 'udphealth_check.dart';

/// {@template pulumi_compute_alpha_health_check_args_doc}
/// The set of arguments for HealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_health_check_args_doc}
class HealthCheckArgs {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final pulumi.Input<int>? checkIntervalSec;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  final pulumi.Input<GRPCHealthCheck>? grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final pulumi.Input<int>? healthyThreshold;
  final pulumi.Input<HTTP2HealthCheck>? http2HealthCheck;
  final pulumi.Input<HTTPHealthCheck>? httpHealthCheck;
  final pulumi.Input<HTTPSHealthCheck>? httpsHealthCheck;

  /// Type of the resource.
  final pulumi.Input<String>? kind;

  /// Configure logging on this health check.
  final pulumi.Input<HealthCheckLogConfig>? logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  final pulumi.Input<List<String>>? sourceRegions;
  final pulumi.Input<SSLHealthCheck>? sslHealthCheck;
  final pulumi.Input<TCPHealthCheck>? tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final pulumi.Input<int>? timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final pulumi.Input<HealthCheckType>? type;
  final pulumi.Input<UDPHealthCheck>? udpHealthCheck;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final pulumi.Input<int>? unhealthyThreshold;

  /// Creates a new [HealthCheckArgs].
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
  /// [sourceRegions] The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  /// [sslHealthCheck] Optional.
  /// [tcpHealthCheck] Optional.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [udpHealthCheck] Optional.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  HealthCheckArgs({
    int? checkIntervalSec,
    String? description,
    GRPCHealthCheck? grpcHealthCheck,
    int? healthyThreshold,
    HTTP2HealthCheck? http2HealthCheck,
    HTTPHealthCheck? httpHealthCheck,
    HTTPSHealthCheck? httpsHealthCheck,
    String? kind,
    HealthCheckLogConfig? logConfig,
    String? name,
    String? project,
    String? requestId,
    List<String>? sourceRegions,
    SSLHealthCheck? sslHealthCheck,
    TCPHealthCheck? tcpHealthCheck,
    int? timeoutSec,
    HealthCheckType? type,
    UDPHealthCheck? udpHealthCheck,
    int? unhealthyThreshold,
  })  : checkIntervalSec = pulumi.Input.asOptionalInput<int>(checkIntervalSec),
        description = pulumi.Input.asOptionalInput<String>(description),
        grpcHealthCheck =
            pulumi.Input.asOptionalInput<GRPCHealthCheck>(grpcHealthCheck),
        healthyThreshold = pulumi.Input.asOptionalInput<int>(healthyThreshold),
        http2HealthCheck =
            pulumi.Input.asOptionalInput<HTTP2HealthCheck>(http2HealthCheck),
        httpHealthCheck =
            pulumi.Input.asOptionalInput<HTTPHealthCheck>(httpHealthCheck),
        httpsHealthCheck =
            pulumi.Input.asOptionalInput<HTTPSHealthCheck>(httpsHealthCheck),
        kind = pulumi.Input.asOptionalInput<String>(kind),
        logConfig =
            pulumi.Input.asOptionalInput<HealthCheckLogConfig>(logConfig),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        sourceRegions =
            pulumi.Input.asOptionalInput<List<String>>(sourceRegions),
        sslHealthCheck =
            pulumi.Input.asOptionalInput<SSLHealthCheck>(sslHealthCheck),
        tcpHealthCheck =
            pulumi.Input.asOptionalInput<TCPHealthCheck>(tcpHealthCheck),
        timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
        type = pulumi.Input.asOptionalInput<HealthCheckType>(type),
        udpHealthCheck =
            pulumi.Input.asOptionalInput<UDPHealthCheck>(udpHealthCheck),
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
          GRPCHealthCheck,
          Map<String, dynamic>>(grpcHealthCheckValue, (value) => value.toMap());
    }
    final healthyThresholdValue = healthyThreshold;
    if (healthyThresholdValue != null) {
      map['healthyThreshold'] = healthyThresholdValue;
    }
    final http2HealthCheckValue = http2HealthCheck;
    if (http2HealthCheckValue != null) {
      map['http2HealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HTTP2HealthCheck, Map<String, dynamic>>(
          http2HealthCheckValue, (value) => value.toMap());
    }
    final httpHealthCheckValue = httpHealthCheck;
    if (httpHealthCheckValue != null) {
      map['httpHealthCheck'] = pulumi.Input.mapOptionalInputValue<
          HTTPHealthCheck,
          Map<String, dynamic>>(httpHealthCheckValue, (value) => value.toMap());
    }
    final httpsHealthCheckValue = httpsHealthCheck;
    if (httpsHealthCheckValue != null) {
      map['httpsHealthCheck'] = pulumi.Input.mapOptionalInputValue<
              HTTPSHealthCheck, Map<String, dynamic>>(
          httpsHealthCheckValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
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
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final sourceRegionsValue = sourceRegions;
    if (sourceRegionsValue != null) {
      map['sourceRegions'] = sourceRegionsValue;
    }
    final sslHealthCheckValue = sslHealthCheck;
    if (sslHealthCheckValue != null) {
      map['sslHealthCheck'] = pulumi.Input.mapOptionalInputValue<SSLHealthCheck,
          Map<String, dynamic>>(sslHealthCheckValue, (value) => value.toMap());
    }
    final tcpHealthCheckValue = tcpHealthCheck;
    if (tcpHealthCheckValue != null) {
      map['tcpHealthCheck'] = pulumi.Input.mapOptionalInputValue<TCPHealthCheck,
          Map<String, dynamic>>(tcpHealthCheckValue, (value) => value.toMap());
    }
    final timeoutSecValue = timeoutSec;
    if (timeoutSecValue != null) {
      map['timeoutSec'] = timeoutSecValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<HealthCheckType, String>(
          typeValue, (value) => value.value);
    }
    final udpHealthCheckValue = udpHealthCheck;
    if (udpHealthCheckValue != null) {
      map['udpHealthCheck'] = pulumi.Input.mapOptionalInputValue<UDPHealthCheck,
          Map<String, dynamic>>(udpHealthCheckValue, (value) => value.toMap());
    }
    final unhealthyThresholdValue = unhealthyThreshold;
    if (unhealthyThresholdValue != null) {
      map['unhealthyThreshold'] = unhealthyThresholdValue;
    }
    return map;
  }

  factory HealthCheckArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckArgs(
      checkIntervalSec: map['checkIntervalSec'] == null
          ? null
          : map['checkIntervalSec'] as int,
      description:
          map['description'] == null ? null : map['description'] as String,
      grpcHealthCheck: map['grpcHealthCheck'] == null
          ? null
          : GRPCHealthCheck.fromMap(
              (map['grpcHealthCheck'] as Map).cast<String, dynamic>()),
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      http2HealthCheck: map['http2HealthCheck'] == null
          ? null
          : HTTP2HealthCheck.fromMap(
              (map['http2HealthCheck'] as Map).cast<String, dynamic>()),
      httpHealthCheck: map['httpHealthCheck'] == null
          ? null
          : HTTPHealthCheck.fromMap(
              (map['httpHealthCheck'] as Map).cast<String, dynamic>()),
      httpsHealthCheck: map['httpsHealthCheck'] == null
          ? null
          : HTTPSHealthCheck.fromMap(
              (map['httpsHealthCheck'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      logConfig: map['logConfig'] == null
          ? null
          : HealthCheckLogConfig.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sourceRegions: map['sourceRegions'] == null
          ? null
          : (map['sourceRegions'] as List).cast<String>(),
      sslHealthCheck: map['sslHealthCheck'] == null
          ? null
          : SSLHealthCheck.fromMap(
              (map['sslHealthCheck'] as Map).cast<String, dynamic>()),
      tcpHealthCheck: map['tcpHealthCheck'] == null
          ? null
          : TCPHealthCheck.fromMap(
              (map['tcpHealthCheck'] as Map).cast<String, dynamic>()),
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
      type: map['type'] == null
          ? null
          : HealthCheckType.fromValue(map['type'] as String),
      udpHealthCheck: map['udpHealthCheck'] == null
          ? null
          : UDPHealthCheck.fromMap(
              (map['udpHealthCheck'] as Map).cast<String, dynamic>()),
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
