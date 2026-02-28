// ignore_for_file: unused_element, unnecessary_cast

import 'grpchealth_check_response_compute_v1.dart';
import 'health_check_log_config_response_compute_v1.dart';
import 'http2_health_check_response_compute_v1.dart';
import 'httphealth_check_response_compute_v1.dart';
import 'httpshealth_check_response_compute_v1.dart';
import 'sslhealth_check_response_compute_v1.dart';
import 'tcphealth_check_response_compute_v1.dart';

/// Result data returned by getRegionHealthCheck.
class GetRegionHealthCheckComputeV1Result {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final int checkIntervalSec;

  /// Creation timestamp in 3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  final GRPCHealthCheckResponseComputeV1 grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final int healthyThreshold;
  final HTTP2HealthCheckResponseComputeV1 http2HealthCheck;
  final HTTPHealthCheckResponseComputeV1 httpHealthCheck;
  final HTTPSHealthCheckResponseComputeV1 httpsHealthCheck;

  /// Type of the resource.
  final String kind;

  /// Configure logging on this health check.
  final HealthCheckLogConfigResponseComputeV1 logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final String name;

  /// Region where the health check resides. Not applicable to global health checks.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;
  final SSLHealthCheckResponseComputeV1 sslHealthCheck;
  final TCPHealthCheckResponseComputeV1 tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final int timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final String type;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final int unhealthyThreshold;

  /// Creates a new [GetRegionHealthCheckComputeV1Result].
  /// [checkIntervalSec] How often (in seconds) to send a health check. The default value is 5 seconds.
  /// [creationTimestamp] Creation timestamp in 3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [grpcHealthCheck] Required.
  /// [healthyThreshold] A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  /// [http2HealthCheck] Required.
  /// [httpHealthCheck] Required.
  /// [httpsHealthCheck] Required.
  /// [kind] Type of the resource.
  /// [logConfig] Configure logging on this health check.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  /// [region] Region where the health check resides. Not applicable to global health checks.
  /// [selfLink] Server-defined URL for the resource.
  /// [sslHealthCheck] Required.
  /// [tcpHealthCheck] Required.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  GetRegionHealthCheckComputeV1Result({
    required this.checkIntervalSec,
    required this.creationTimestamp,
    required this.description,
    required this.grpcHealthCheck,
    required this.healthyThreshold,
    required this.http2HealthCheck,
    required this.httpHealthCheck,
    required this.httpsHealthCheck,
    required this.kind,
    required this.logConfig,
    required this.name,
    required this.region,
    required this.selfLink,
    required this.sslHealthCheck,
    required this.tcpHealthCheck,
    required this.timeoutSec,
    required this.type,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['checkIntervalSec'] = checkIntervalSec;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['grpcHealthCheck'] = grpcHealthCheck.toMap();
    map['healthyThreshold'] = healthyThreshold;
    map['http2HealthCheck'] = http2HealthCheck.toMap();
    map['httpHealthCheck'] = httpHealthCheck.toMap();
    map['httpsHealthCheck'] = httpsHealthCheck.toMap();
    map['kind'] = kind;
    map['logConfig'] = logConfig.toMap();
    map['name'] = name;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['sslHealthCheck'] = sslHealthCheck.toMap();
    map['tcpHealthCheck'] = tcpHealthCheck.toMap();
    map['timeoutSec'] = timeoutSec;
    map['type'] = type;
    map['unhealthyThreshold'] = unhealthyThreshold;
    return map;
  }

  factory GetRegionHealthCheckComputeV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetRegionHealthCheckComputeV1Result(
      checkIntervalSec: map['checkIntervalSec'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      grpcHealthCheck: GRPCHealthCheckResponseComputeV1.fromMap(
          (map['grpcHealthCheck'] as Map).cast<String, dynamic>()),
      healthyThreshold: map['healthyThreshold'] as int,
      http2HealthCheck: HTTP2HealthCheckResponseComputeV1.fromMap(
          (map['http2HealthCheck'] as Map).cast<String, dynamic>()),
      httpHealthCheck: HTTPHealthCheckResponseComputeV1.fromMap(
          (map['httpHealthCheck'] as Map).cast<String, dynamic>()),
      httpsHealthCheck: HTTPSHealthCheckResponseComputeV1.fromMap(
          (map['httpsHealthCheck'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      logConfig: HealthCheckLogConfigResponseComputeV1.fromMap(
          (map['logConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      sslHealthCheck: SSLHealthCheckResponseComputeV1.fromMap(
          (map['sslHealthCheck'] as Map).cast<String, dynamic>()),
      tcpHealthCheck: TCPHealthCheckResponseComputeV1.fromMap(
          (map['tcpHealthCheck'] as Map).cast<String, dynamic>()),
      timeoutSec: map['timeoutSec'] as int,
      type: map['type'] as String,
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
