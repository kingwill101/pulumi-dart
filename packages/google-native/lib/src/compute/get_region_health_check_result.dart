// ignore_for_file: unused_element, unnecessary_cast

import 'grpchealth_check_response.dart';
import 'health_check_log_config_response.dart';
import 'http2_health_check_response.dart';
import 'httphealth_check_response.dart';
import 'httpshealth_check_response.dart';
import 'sslhealth_check_response.dart';
import 'tcphealth_check_response.dart';
import 'udphealth_check_response.dart';

/// Result data returned by getRegionHealthCheck.
class GetRegionHealthCheckResult {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  final int checkIntervalSec;

  /// Creation timestamp in 3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  final GRPCHealthCheckResponse grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  final int healthyThreshold;
  final HTTP2HealthCheckResponse http2HealthCheck;
  final HTTPHealthCheckResponse httpHealthCheck;
  final HTTPSHealthCheckResponse httpsHealthCheck;

  /// Type of the resource.
  final String kind;

  /// Configure logging on this health check.
  final HealthCheckLogConfigResponse logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  final String name;

  /// Region where the health check resides. Not applicable to global health checks.
  final String region;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;

  /// The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  final List<String> sourceRegions;
  final SSLHealthCheckResponse sslHealthCheck;
  final TCPHealthCheckResponse tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  final int timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  final String type;
  final UDPHealthCheckResponse udpHealthCheck;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  final int unhealthyThreshold;

  /// Creates a new [GetRegionHealthCheckResult].
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
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [sourceRegions] The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  /// [sslHealthCheck] Required.
  /// [tcpHealthCheck] Required.
  /// [timeoutSec] How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  /// [type] Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  /// [udpHealthCheck] Required.
  /// [unhealthyThreshold] A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  GetRegionHealthCheckResult({
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
    required this.selfLinkWithId,
    required this.sourceRegions,
    required this.sslHealthCheck,
    required this.tcpHealthCheck,
    required this.timeoutSec,
    required this.type,
    required this.udpHealthCheck,
    required this.unhealthyThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIntervalSec': checkIntervalSec,
      'creationTimestamp': creationTimestamp,
      'description': description,
      'grpcHealthCheck': grpcHealthCheck.toMap(),
      'healthyThreshold': healthyThreshold,
      'http2HealthCheck': http2HealthCheck.toMap(),
      'httpHealthCheck': httpHealthCheck.toMap(),
      'httpsHealthCheck': httpsHealthCheck.toMap(),
      'kind': kind,
      'logConfig': logConfig.toMap(),
      'name': name,
      'region': region,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'sourceRegions': sourceRegions,
      'sslHealthCheck': sslHealthCheck.toMap(),
      'tcpHealthCheck': tcpHealthCheck.toMap(),
      'timeoutSec': timeoutSec,
      'type': type,
      'udpHealthCheck': udpHealthCheck.toMap(),
      'unhealthyThreshold': unhealthyThreshold,
    };
  }

  factory GetRegionHealthCheckResult.fromMap(Map<String, dynamic> map) {
    return GetRegionHealthCheckResult(
      checkIntervalSec: map['checkIntervalSec'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      grpcHealthCheck: GRPCHealthCheckResponse.fromMap(
        (map['grpcHealthCheck'] as Map).cast<String, dynamic>(),
      ),
      healthyThreshold: map['healthyThreshold'] as int,
      http2HealthCheck: HTTP2HealthCheckResponse.fromMap(
        (map['http2HealthCheck'] as Map).cast<String, dynamic>(),
      ),
      httpHealthCheck: HTTPHealthCheckResponse.fromMap(
        (map['httpHealthCheck'] as Map).cast<String, dynamic>(),
      ),
      httpsHealthCheck: HTTPSHealthCheckResponse.fromMap(
        (map['httpsHealthCheck'] as Map).cast<String, dynamic>(),
      ),
      kind: map['kind'] as String,
      logConfig: HealthCheckLogConfigResponse.fromMap(
        (map['logConfig'] as Map).cast<String, dynamic>(),
      ),
      name: map['name'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      sourceRegions: (map['sourceRegions'] as List).cast<String>(),
      sslHealthCheck: SSLHealthCheckResponse.fromMap(
        (map['sslHealthCheck'] as Map).cast<String, dynamic>(),
      ),
      tcpHealthCheck: TCPHealthCheckResponse.fromMap(
        (map['tcpHealthCheck'] as Map).cast<String, dynamic>(),
      ),
      timeoutSec: map['timeoutSec'] as int,
      type: map['type'] as String,
      udpHealthCheck: UDPHealthCheckResponse.fromMap(
        (map['udpHealthCheck'] as Map).cast<String, dynamic>(),
      ),
      unhealthyThreshold: map['unhealthyThreshold'] as int,
    );
  }
}
