import 'package:pulumi/pulumi.dart';
import '../health_check_grpc_health_check/health_check_grpc_health_check.dart';
import '../health_check_grpc_tls_health_check/health_check_grpc_tls_health_check.dart';
import '../health_check_http2_health_check/health_check_http2_health_check.dart';
import '../health_check_http_health_check/health_check_http_health_check.dart';
import '../health_check_https_health_check/health_check_https_health_check.dart';
import '../health_check_log_config/health_check_log_config.dart';
import '../health_check_ssl_health_check/health_check_ssl_health_check.dart';
import '../health_check_tcp_health_check/health_check_tcp_health_check.dart';
import 'health_check_args.dart';

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
/// ~>**NOTE**: Legacy HTTP(S) health checks must be used for target pool-based network
/// load balancers. See the [official guide](https://cloud.google.com/load-balancing/docs/health-check-concepts#selecting_hc)
/// for choosing a type of health check.
///
///
/// To get more information about HealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/healthChecks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/health-checks)
///
/// ## Example Usage
///
/// ### Health Check Tcp
///
///
///
/// ### Health Check Tcp Full
///
///
///
/// ### Health Check Ssl
///
///
///
/// ### Health Check Ssl Full
///
///
///
/// ### Health Check Http
///
///
///
/// ### Health Check Http Full
///
///
///
/// ### Health Check Https
///
///
///
/// ### Health Check Https Full
///
///
///
/// ### Health Check Http2
///
///
///
/// ### Health Check Http2 Full
///
///
///
/// ### Health Check Grpc
///
///
///
/// ### Health Check Grpc Full
///
///
///
/// ### Health Check Grpc With Tls
///
///
///
/// ### Health Check Grpc With Tls Full
///
///
///
/// ### Health Check With Logging
///
///
///
/// ### Compute Health Check Http Source Regions
///
///
///
/// ### Compute Health Check Https Source Regions
///
///
///
/// ### Compute Health Check Tcp Source Regions
///
///
///
///
/// ## Import
///
/// HealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/healthChecks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, HealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/healthCheck:HealthCheck default projects/{{project}}/global/healthChecks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/healthCheck:HealthCheck default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/healthCheck:HealthCheck default {{name}}
/// ```
class HealthCheck extends CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  late final Output<int?> checkIntervalSec;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final Output<String?> description;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckGrpcHealthCheck?> grpcHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckGrpcTlsHealthCheck?> grpcTlsHealthCheck;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  late final Output<int?> healthyThreshold;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckHttp2HealthCheck?> http2HealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckHttpHealthCheck?> httpHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckHttpsHealthCheck?> httpsHealthCheck;

  /// Configure logging on this health check.
  /// Structure is documented below.
  late final Output<HealthCheckLogConfig> logConfig;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// The list of cloud regions from which health checks are performed. If
  /// any regions are specified, then exactly 3 regions should be specified.
  /// The region names must be valid names of Google Cloud regions. This can
  /// only be set for global health check. If this list is non-empty, then
  /// there are restrictions on what other health check fields are supported
  /// and what other resources can use this health check:
  /// * SSL, HTTP2, and GRPC protocols are not supported.
  /// * The TCP request field is not supported.
  /// * The proxyHeader field for HTTP, HTTPS, and TCP is not supported.
  /// * The checkIntervalSec field must be at least 30.
  /// * The health check cannot be used with BackendService nor with managed
  /// instance group auto-healing.
  late final Output<List<String>?> sourceRegions;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckSslHealthCheck?> sslHealthCheck;

  /// A nested object resource.
  /// Structure is documented below.
  late final Output<HealthCheckTcpHealthCheck?> tcpHealthCheck;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  late final Output<int?> timeoutSec;

  /// The type of the health check. One of HTTP, HTTPS, TCP, or SSL.
  late final Output<String> type;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  late final Output<int?> unhealthyThreshold;

  HealthCheck(
    String name, {
    HealthCheckArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/healthCheck:HealthCheck',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.grpcHealthCheck =
        registerOutput<HealthCheckGrpcHealthCheck?>('grpcHealthCheck');
    this.grpcTlsHealthCheck =
        registerOutput<HealthCheckGrpcTlsHealthCheck?>('grpcTlsHealthCheck');
    this.healthyThreshold = registerOutput<int?>('healthyThreshold');
    this.http2HealthCheck =
        registerOutput<HealthCheckHttp2HealthCheck?>('http2HealthCheck');
    this.httpHealthCheck =
        registerOutput<HealthCheckHttpHealthCheck?>('httpHealthCheck');
    this.httpsHealthCheck =
        registerOutput<HealthCheckHttpsHealthCheck?>('httpsHealthCheck');
    this.logConfig = registerOutput<HealthCheckLogConfig>('logConfig');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.sourceRegions = registerOutput<List<String>?>('sourceRegions');
    this.sslHealthCheck =
        registerOutput<HealthCheckSslHealthCheck?>('sslHealthCheck');
    this.tcpHealthCheck =
        registerOutput<HealthCheckTcpHealthCheck?>('tcpHealthCheck');
    this.timeoutSec = registerOutput<int?>('timeoutSec');
    this.type = registerOutput<String>('type');
    this.unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }
}
