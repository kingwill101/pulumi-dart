import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_target_tcp_proxy_args.dart';

/// Represents a RegionTargetTcpProxy resource, which is used by one or more
/// forwarding rules to route incoming TCP requests to a regional TCP proxy load
/// balancer.
///
///
/// To get more information about RegionTargetTcpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetTcpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/load-balancing/docs/tcp/internal-proxy)
///
/// ## Example Usage
///
/// ### Region Target Tcp Proxy Basic
///
///
///
///
/// ## Import
///
/// RegionTargetTcpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetTcpProxies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionTargetTcpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default projects/{{project}}/regions/{{region}}/targetTcpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy default {{name}}
/// ```
class RegionTargetTcpProxy extends pulumi.CustomResource {
  /// A reference to the BackendService resource.
  late final pulumi.Output<String> backendService;

  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  late final pulumi.Output<bool> proxyBind;

  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  late final pulumi.Output<String?> proxyHeader;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;

  /// The Region in which the created target TCP proxy should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  RegionTargetTcpProxy(
    String name, {
    RegionTargetTcpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetTcpProxy:RegionTargetTcpProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendService = registerOutput<String>('backendService');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.proxyHeader = registerOutput<String?>('proxyHeader');
    this.proxyId = registerOutput<int>('proxyId');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
