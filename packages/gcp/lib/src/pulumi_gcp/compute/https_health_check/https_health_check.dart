import 'package:pulumi/pulumi.dart' as pulumi;
import 'https_health_check_args.dart';

/// An HttpsHealthCheck resource. This resource defines a template for how
/// individual VMs should be checked for health, via HTTPS.
///
/// > **Note:** gcp.compute.HttpsHealthCheck is a legacy health check.
/// The newer [gcp.compute.HealthCheck](https://www.terraform.io/docs/providers/google/r/compute_health_check.html)
/// should be preferred for all uses except
/// [Network Load Balancers](https://cloud.google.com/compute/docs/load-balancing/network/)
/// which still require the legacy version.
///
///
/// To get more information about HttpsHealthCheck, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/httpsHealthChecks)
/// * How-to Guides
/// * [Adding Health Checks](https://cloud.google.com/compute/docs/load-balancing/health-checks#legacy_health_checks)
///
/// ## Example Usage
///
/// ### Https Health Check Basic
///
///
///
///
/// ## Import
///
/// HttpsHealthCheck can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/httpsHealthChecks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, HttpsHealthCheck can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/httpsHealthCheck:HttpsHealthCheck default projects/{{project}}/global/httpsHealthChecks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/httpsHealthCheck:HttpsHealthCheck default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/httpsHealthCheck:HttpsHealthCheck default {{name}}
/// ```
class HttpsHealthCheck extends pulumi.CustomResource {
  /// How often (in seconds) to send a health check. The default value is 5
  /// seconds.
  late final pulumi.Output<int?> checkIntervalSec;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when
  /// you create the resource.
  late final pulumi.Output<String?> description;

  /// A so-far unhealthy instance will be marked healthy after this many
  /// consecutive successes. The default value is 2.
  late final pulumi.Output<int?> healthyThreshold;

  /// The value of the host header in the HTTPS health check request. If
  /// left empty (default value), the public IP on behalf of which this
  /// health check is performed will be used.
  late final pulumi.Output<String?> host;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035.  Specifically, the name must be 1-63 characters long and
  /// match the regular expression `a-z?` which means
  /// the first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the
  /// last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The TCP port number for the HTTPS health check request.
  /// The default value is 443.
  late final pulumi.Output<int?> port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The request path of the HTTPS health check request.
  /// The default value is /.
  late final pulumi.Output<String?> requestPath;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// How long (in seconds) to wait before claiming failure.
  /// The default value is 5 seconds.  It is invalid for timeoutSec to have
  /// greater value than checkIntervalSec.
  late final pulumi.Output<int?> timeoutSec;

  /// A so-far healthy instance will be marked unhealthy after this many
  /// consecutive failures. The default value is 2.
  late final pulumi.Output<int?> unhealthyThreshold;

  HttpsHealthCheck(
    String name, {
    HttpsHealthCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/httpsHealthCheck:HttpsHealthCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.checkIntervalSec = registerOutput<int?>('checkIntervalSec');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.healthyThreshold = registerOutput<int?>('healthyThreshold');
    this.host = registerOutput<String?>('host');
    this.name = registerOutput<String>('name');
    this.port = registerOutput<int?>('port');
    this.project = registerOutput<String>('project');
    this.requestPath = registerOutput<String?>('requestPath');
    this.selfLink = registerOutput<String>('selfLink');
    this.timeoutSec = registerOutput<int?>('timeoutSec');
    this.unhealthyThreshold = registerOutput<int?>('unhealthyThreshold');
  }
}
