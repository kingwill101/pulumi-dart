import 'package:pulumi/pulumi.dart';
import 'http_health_check_args2.dart';

/// Creates a HttpHealthCheck resource in the specified project using the data included in the request.
class HttpHealthCheck2 extends CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5 seconds.
  late final Output<int> checkIntervalSec;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// A so-far unhealthy instance will be marked healthy after this many consecutive successes. The default value is 2.
  late final Output<int> healthyThreshold;

  /// The value of the host header in the HTTP health check request. If left empty (default value), the public IP on behalf of which this health check is performed will be used.
  late final Output<String> host;

  /// Type of the resource. Always compute#httpHealthCheck for HTTP health checks.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;

  /// The TCP port number for the HTTP health check request. The default value is 80.
  late final Output<int> port;
  late final Output<String> project;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The request path of the HTTP health check request. The default value is /. This field does not support query parameters. Must comply with RFC3986.
  late final Output<String> requestPath;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// How long (in seconds) to wait before claiming failure. The default value is 5 seconds. It is invalid for timeoutSec to have greater value than checkIntervalSec.
  late final Output<int> timeoutSec;

  /// A so-far healthy instance will be marked unhealthy after this many consecutive failures. The default value is 2.
  late final Output<int> unhealthyThreshold;

  HttpHealthCheck2(
    String name, {
    HttpHealthCheckArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/beta:HttpHealthCheck',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkIntervalSec = Output.createUnknown<int>();
    this.creationTimestamp = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.healthyThreshold = Output.createUnknown<int>();
    this.host = Output.createUnknown<String>();
    this.kind = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.port = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.requestPath = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.timeoutSec = Output.createUnknown<int>();
    this.unhealthyThreshold = Output.createUnknown<int>();
  }
}
