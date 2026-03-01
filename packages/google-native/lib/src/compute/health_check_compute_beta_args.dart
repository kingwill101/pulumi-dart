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

/// {@template pulumi_compute_beta_health_check_compute_beta_args_doc}
/// The set of arguments for HealthCheck.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_health_check_compute_beta_args_doc}
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

  /// Creates a new [HealthCheckComputeBetaArgs].
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
  HealthCheckComputeBetaArgs({
    int? checkIntervalSec,
    String? description,
    GRPCHealthCheckComputeBeta? grpcHealthCheck,
    int? healthyThreshold,
    HTTP2HealthCheckComputeBeta? http2HealthCheck,
    HTTPHealthCheckComputeBeta? httpHealthCheck,
    HTTPSHealthCheckComputeBeta? httpsHealthCheck,
    String? kind,
    HealthCheckLogConfigComputeBeta? logConfig,
    String? name,
    String? project,
    String? requestId,
    SSLHealthCheckComputeBeta? sslHealthCheck,
    TCPHealthCheckComputeBeta? tcpHealthCheck,
    int? timeoutSec,
    HealthCheckTypeComputeBeta? type,
    int? unhealthyThreshold,
  }) : checkIntervalSec = pulumi.Input.asOptionalInput<int>(checkIntervalSec),
       description = pulumi.Input.asOptionalInput<String>(description),
       grpcHealthCheck = pulumi
           .Input.asOptionalInput<GRPCHealthCheckComputeBeta>(grpcHealthCheck),
       healthyThreshold = pulumi.Input.asOptionalInput<int>(healthyThreshold),
       http2HealthCheck =
           pulumi.Input.asOptionalInput<HTTP2HealthCheckComputeBeta>(
             http2HealthCheck,
           ),
       httpHealthCheck = pulumi
           .Input.asOptionalInput<HTTPHealthCheckComputeBeta>(httpHealthCheck),
       httpsHealthCheck =
           pulumi.Input.asOptionalInput<HTTPSHealthCheckComputeBeta>(
             httpsHealthCheck,
           ),
       kind = pulumi.Input.asOptionalInput<String>(kind),
       logConfig = pulumi
           .Input.asOptionalInput<HealthCheckLogConfigComputeBeta>(logConfig),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       sslHealthCheck = pulumi.Input.asOptionalInput<SSLHealthCheckComputeBeta>(
         sslHealthCheck,
       ),
       tcpHealthCheck = pulumi.Input.asOptionalInput<TCPHealthCheckComputeBeta>(
         tcpHealthCheck,
       ),
       timeoutSec = pulumi.Input.asOptionalInput<int>(timeoutSec),
       type = pulumi.Input.asOptionalInput<HealthCheckTypeComputeBeta>(type),
       unhealthyThreshold = pulumi.Input.asOptionalInput<int>(
         unhealthyThreshold,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': ?checkIntervalSec,
      'description': ?description,
      'grpcHealthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            GRPCHealthCheckComputeBeta,
            Map<String, dynamic>
          >(grpcHealthCheck, (value) => value.toMap()),
      'healthyThreshold': ?healthyThreshold,
      'http2HealthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            HTTP2HealthCheckComputeBeta,
            Map<String, dynamic>
          >(http2HealthCheck, (value) => value.toMap()),
      'httpHealthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            HTTPHealthCheckComputeBeta,
            Map<String, dynamic>
          >(httpHealthCheck, (value) => value.toMap()),
      'httpsHealthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            HTTPSHealthCheckComputeBeta,
            Map<String, dynamic>
          >(httpsHealthCheck, (value) => value.toMap()),
      'kind': ?kind,
      'logConfig':
          ?pulumi.Input.mapOptionalInputValue<
            HealthCheckLogConfigComputeBeta,
            Map<String, dynamic>
          >(logConfig, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'sslHealthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            SSLHealthCheckComputeBeta,
            Map<String, dynamic>
          >(sslHealthCheck, (value) => value.toMap()),
      'tcpHealthCheck':
          ?pulumi.Input.mapOptionalInputValue<
            TCPHealthCheckComputeBeta,
            Map<String, dynamic>
          >(tcpHealthCheck, (value) => value.toMap()),
      'timeoutSec': ?timeoutSec,
      'type':
          ?pulumi.Input.mapOptionalInputValue<
            HealthCheckTypeComputeBeta,
            String
          >(type, (value) => value.value),
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory HealthCheckComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return HealthCheckComputeBetaArgs(
      checkIntervalSec: map['checkIntervalSec'] == null
          ? null
          : map['checkIntervalSec'] as int,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      grpcHealthCheck: map['grpcHealthCheck'] == null
          ? null
          : GRPCHealthCheckComputeBeta.fromMap(
              (map['grpcHealthCheck'] as Map).cast<String, dynamic>(),
            ),
      healthyThreshold: map['healthyThreshold'] == null
          ? null
          : map['healthyThreshold'] as int,
      http2HealthCheck: map['http2HealthCheck'] == null
          ? null
          : HTTP2HealthCheckComputeBeta.fromMap(
              (map['http2HealthCheck'] as Map).cast<String, dynamic>(),
            ),
      httpHealthCheck: map['httpHealthCheck'] == null
          ? null
          : HTTPHealthCheckComputeBeta.fromMap(
              (map['httpHealthCheck'] as Map).cast<String, dynamic>(),
            ),
      httpsHealthCheck: map['httpsHealthCheck'] == null
          ? null
          : HTTPSHealthCheckComputeBeta.fromMap(
              (map['httpsHealthCheck'] as Map).cast<String, dynamic>(),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      logConfig: map['logConfig'] == null
          ? null
          : HealthCheckLogConfigComputeBeta.fromMap(
              (map['logConfig'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      sslHealthCheck: map['sslHealthCheck'] == null
          ? null
          : SSLHealthCheckComputeBeta.fromMap(
              (map['sslHealthCheck'] as Map).cast<String, dynamic>(),
            ),
      tcpHealthCheck: map['tcpHealthCheck'] == null
          ? null
          : TCPHealthCheckComputeBeta.fromMap(
              (map['tcpHealthCheck'] as Map).cast<String, dynamic>(),
            ),
      timeoutSec: map['timeoutSec'] == null ? null : map['timeoutSec'] as int,
      type: map['type'] == null
          ? null
          : HealthCheckTypeComputeBeta.fromValue(map['type'] as String),
      unhealthyThreshold: map['unhealthyThreshold'] == null
          ? null
          : map['unhealthyThreshold'] as int,
    );
  }
}
