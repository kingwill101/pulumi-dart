import 'package:pulumi/pulumi.dart';
import 'grpchealth_check_response3.dart';
import 'health_check_log_config_response3.dart';
import 'http2_health_check_response3.dart';
import 'httphealth_check_response3.dart';
import 'httpshealth_check_response3.dart';
import 'region_health_check_args3.dart';
import 'sslhealth_check_response3.dart';
import 'tcphealth_check_response3.dart';

/// Creates a HealthCheck resource in the specified project using the data included in the request.
class RegionHealthCheck3 extends CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  late final Output<int> checkIntervalSec;

  /// Creation timestamp in 3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;
  late final Output<GRPCHealthCheckResponse3> grpcHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  late final Output<int> healthyThreshold;
  late final Output<HTTP2HealthCheckResponse3> http2HealthCheck;
  late final Output<HTTPHealthCheckResponse3> httpHealthCheck;
  late final Output<HTTPSHealthCheckResponse3> httpsHealthCheck;

  /// Type of the resource.
  late final Output<String> kind;

  /// Configure logging on this health check.
  late final Output<HealthCheckLogConfigResponse3> logConfig;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. For example, a name that is 1-63 characters long, matches the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?`, and otherwise complies with RFC1035. This regular expression describes a name where the first character is a lowercase letter, and all following characters are a dash, lowercase letter, or digit, except the last character, which isn't a dash.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;
  late final Output<SSLHealthCheckResponse3> sslHealthCheck;
  late final Output<TCPHealthCheckResponse3> tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  late final Output<int> timeoutSec;

  /// Specifies the type of the healthCheck, either TCP, SSL, HTTP, HTTPS, HTTP2 or GRPC. Exactly one of the protocol-specific health check fields must be specified, which must match type field.
  late final Output<String> type;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  late final Output<int> unhealthyThreshold;

  RegionHealthCheck3(
    String name, {
    RegionHealthCheckArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:RegionHealthCheck',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkIntervalSec = registerOutput<int>('checkIntervalSec');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.grpcHealthCheck =
        registerOutput<GRPCHealthCheckResponse3>('grpcHealthCheck');
    this.healthyThreshold = registerOutput<int>('healthyThreshold');
    this.http2HealthCheck =
        registerOutput<HTTP2HealthCheckResponse3>('http2HealthCheck');
    this.httpHealthCheck =
        registerOutput<HTTPHealthCheckResponse3>('httpHealthCheck');
    this.httpsHealthCheck =
        registerOutput<HTTPSHealthCheckResponse3>('httpsHealthCheck');
    this.kind = registerOutput<String>('kind');
    this.logConfig = registerOutput<HealthCheckLogConfigResponse3>('logConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.sslHealthCheck =
        registerOutput<SSLHealthCheckResponse3>('sslHealthCheck');
    this.tcpHealthCheck =
        registerOutput<TCPHealthCheckResponse3>('tcpHealthCheck');
    this.timeoutSec = registerOutput<int>('timeoutSec');
    this.type = registerOutput<String>('type');
    this.unhealthyThreshold = registerOutput<int>('unhealthyThreshold');
  }
}
