import 'package:pulumi/pulumi.dart' as pulumi;
import '../region_health_check_grpc_health_check/region_health_check_grpc_health_check.dart';
import '../region_health_check_grpc_tls_health_check/region_health_check_grpc_tls_health_check.dart';
import '../region_health_check_http2_health_check/region_health_check_http2_health_check.dart';
import '../region_health_check_http_health_check/region_health_check_http_health_check.dart';
import '../region_health_check_https_health_check/region_health_check_https_health_check.dart';
import '../region_health_check_log_config/region_health_check_log_config.dart';
import '../region_health_check_ssl_health_check/region_health_check_ssl_health_check.dart';
import '../region_health_check_tcp_health_check/region_health_check_tcp_health_check.dart';
import 'region_health_check_args.dart';

/// Health Checks determine whether instances are responsive and able to do work.
/// They are an important part of a comprehensive load balancing configuration,
/// as they enable monitoring instances behind load balancers.
///
/// Health Checks poll instances at a specified interval. Instances that
/// do not respond successfully to some number of probes in a row are marked
/// as unhealthy. No new connections are sent to unhealthy instances,
/// though existing connections will continue. The health check will
/// continue to poll unhealthy instances. If an instance later responds
/// successfully to some number of consecutive probes, it is marked
/// healthy again and can receive new connections.
///
///
/// To get more information about RegionHealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionHealthChecks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/health-checks)
///
/// ## Example Usage
///
/// ### Region Health Check Tcp
///
///
///
/// ### Region Health Check Tcp Full
///
///
///
/// ### Region Health Check Ssl
///
///
///
/// ### Region Health Check Ssl Full
///
///
///
/// ### Region Health Check Http
///
///
///
/// ### Region Health Check Http Logs
///
///
///
/// ### Region Health Check Http Full
///
///
///
/// ### Region Health Check Https
///
///
///
/// ### Region Health Check Https Full
///
///
///
/// ### Region Health Check Http2
///
///
///
/// ### Region Health Check Http2 Full
///
///
///
/// ### Region Health Check Grpc
///
///
///
/// ### Region Health Check Grpc Full
///
///
///
/// ### Region Health Check Grpc With Tls
///
///
///
/// ### Region Health Check Grpc With Tls Full
///
///
///
///
/// ## Import
///
/// RegionHealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/healthChecks/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionHealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default projects/{{project}}/regions/{{region}}/healthChecks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionHealthCheck:RegionHealthCheck default {{name}}
/// ```
class RegionHealthCheck extends pulumi.CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  late final pulumi.Output<int?> checkIntervalSec;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckGrpcHealthCheck?> grpcHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckGrpcTlsHealthCheck?>
      grpcTlsHealthCheck;

  /// The unique identifier number for the resource. This identifier is defined by the server.
  late final pulumi.Output<int> healthCheckId;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  late final pulumi.Output<int?> healthyThreshold;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckHttp2HealthCheck?> http2HealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckHttpHealthCheck?> httpHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckHttpsHealthCheck?> httpsHealthCheck;

  /// Configure logging on this health check.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckLogConfig> logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Region in which the created health check should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckSslHealthCheck?> sslHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<RegionHealthCheckTcpHealthCheck?> tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  late final pulumi.Output<int?> timeoutSec;

  /// The type of the health check. One of HTTP, HTTP2, HTTPS, TCP, or SSL.
  late final pulumi.Output<String> type;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  late final pulumi.Output<int?> unhealthyThreshold;

  RegionHealthCheck(
    String name, {
    RegionHealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionHealthCheck:RegionHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.grpcHealthCheck =
        registerOutput<RegionHealthCheckGrpcHealthCheck?>('grpcHealthCheck');
    this.grpcTlsHealthCheck =
        registerOutput<RegionHealthCheckGrpcTlsHealthCheck?>(
            'grpcTlsHealthCheck');
    this.healthCheckId = registerOutput<int>('healthCheckId');
    this.healthyThreshold = registerOutput<int?>('healthyThreshold');
    this.http2HealthCheck =
        registerOutput<RegionHealthCheckHttp2HealthCheck?>('http2HealthCheck');
    this.httpHealthCheck =
        registerOutput<RegionHealthCheckHttpHealthCheck?>('httpHealthCheck');
    this.httpsHealthCheck =
        registerOutput<RegionHealthCheckHttpsHealthCheck?>('httpsHealthCheck');
    this.logConfig = registerOutput<RegionHealthCheckLogConfig>('logConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.sslHealthCheck =
        registerOutput<RegionHealthCheckSslHealthCheck?>('sslHealthCheck');
    this.tcpHealthCheck =
        registerOutput<RegionHealthCheckTcpHealthCheck?>('tcpHealthCheck');
    this.timeoutSec = registerOutput<int?>('timeoutSec');
    this.type = registerOutput<String>('type');
    this.unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }
}
