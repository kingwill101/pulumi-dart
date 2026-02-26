import 'package:pulumi/pulumi.dart';
import 'grpchealth_check_response.dart';
import 'health_check_log_config_response.dart';
import 'http2_health_check_response.dart';
import 'httphealth_check_response.dart';
import 'httpshealth_check_response.dart';
import 'region_health_check_args.dart';
import 'sslhealth_check_response.dart';
import 'tcphealth_check_response.dart';
import 'udphealth_check_response.dart';

/// Creates a HealthCheck resource in the specified project using the data included in the request.
class RegionHealthCheck extends CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  late final Output<int> checkIntervalSec;

  /// Creation timestamp in 3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;
  late final Output<GRPCHealthCheckResponse> grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  late final Output<int> healthyThreshold;
  late final Output<HTTP2HealthCheckResponse> http2HealthCheck;
  late final Output<HTTPHealthCheckResponse> httpHealthCheck;
  late final Output<HTTPSHealthCheckResponse> httpsHealthCheck;

  /// Type of the resource.
  late final Output<String> kind;

  /// Configure logging on this health check.
  late final Output<HealthCheckLogConfigResponse> logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final Output<String> selfLinkWithId;

  /// The list of cloud regions from which health checks are performed. If any regions are specified, then exactly 3 regions should be specified. The region names must be valid names of GCP regions. This can only be set for global health check. If this list is non-empty, then there are restrictions on what other health check fields are supported and what other resources can use this health check: - SSL, HTTP2, and GRPC protocols are not supported. - The TCP request field is not supported. - The proxyHeader field for HTTP, HTTPS, and TCP is not supported. - The checkIntervalSec field must be at least 30. - The health check cannot be used with BackendService nor with managed instance group auto-healing.
  late final Output<List<String>> sourceRegions;
  late final Output<SSLHealthCheckResponse> sslHealthCheck;
  late final Output<TCPHealthCheckResponse> tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  late final Output<int> timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  late final Output<String> type;
  late final Output<UDPHealthCheckResponse> udpHealthCheck;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  late final Output<int> unhealthyThreshold;

  RegionHealthCheck(
    String name, {
    RegionHealthCheckArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:RegionHealthCheck',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkIntervalSec = Output.createUnknown<int>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.grpcHealthCheck = Output.createUnknown<GRPCHealthCheckResponse>();
    this.healthyThreshold = Output.createUnknown<int>();
    this.http2HealthCheck = Output.createUnknown<HTTP2HealthCheckResponse>();
    this.httpHealthCheck = Output.createUnknown<HTTPHealthCheckResponse>();
    this.httpsHealthCheck = Output.createUnknown<HTTPSHealthCheckResponse>();
    this.kind = Output.createUnknown<String>();
    this.logConfig = Output.createUnknown<HealthCheckLogConfigResponse>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.selfLink = Output.createUnknown<String>();
    this.selfLinkWithId = Output.createUnknown<String>();
    this.sourceRegions = Output.createUnknown<List<String>>();
    this.sslHealthCheck = Output.createUnknown<SSLHealthCheckResponse>();
    this.tcpHealthCheck = Output.createUnknown<TCPHealthCheckResponse>();
    this.timeoutSec = Output.createUnknown<int>();
    this.type = Output.createUnknown<String>();
    this.udpHealthCheck = Output.createUnknown<UDPHealthCheckResponse>();
    this.unhealthyThreshold = Output.createUnknown<int>();
  }
}
