import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_target_http_proxy_args.dart';

/// Represents a RegionTargetHttpProxy resource, which is used by one or more
/// forwarding rules to route incoming HTTP requests to a URL map.
///
///
/// To get more information about RegionTargetHttpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Region Target Http Proxy Basic
///
///
///
/// ### Region Target Http Proxy Http Keep Alive Timeout
///
///
///
/// ### Region Target Http Proxy Https Redirect
///
///
///
///
/// ## Import
///
/// RegionTargetHttpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetHttpProxies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionTargetHttpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default projects/{{project}}/regions/{{region}}/targetHttpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy default {{name}}
/// ```
class RegionTargetHttpProxy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regional
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  late final pulumi.Output<int?> httpKeepAliveTimeoutSec;

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

  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;

  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the BackendService.
  late final pulumi.Output<String> urlMap;

  RegionTargetHttpProxy(
    String name, {
    RegionTargetHttpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetHttpProxy:RegionTargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.httpKeepAliveTimeoutSec =
        registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyId = registerOutput<int>('proxyId');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.urlMap = registerOutput<String>('urlMap');
  }
}
