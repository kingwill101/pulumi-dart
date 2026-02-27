import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_http_proxy_args.dart';

/// Represents a TargetHttpProxy resource, which is used by one or more global
/// forwarding rule to route incoming HTTP requests to a URL map.
///
///
/// To get more information about TargetHttpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetHttpProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Target Http Proxy Basic
///
///
///
/// ### Target Http Proxy Http Keep Alive Timeout
///
///
///
/// ### Target Http Proxy Https Redirect
///
///
///
/// ### Target Http Proxy Fingerprint
///
///
///
///
/// ## Import
///
/// TargetHttpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetHttpProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetHttpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpProxy:TargetHttpProxy default projects/{{project}}/global/targetHttpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpProxy:TargetHttpProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetHttpProxy:TargetHttpProxy default {{name}}
/// ```
class TargetHttpProxy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking.
  /// This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to
  /// patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet.
  /// To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  /// A base64-encoded string.
  late final pulumi.Output<String> fingerprint;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value will be used. For Global
  /// external HTTP(S) load balancer, the default value is 610 seconds, the
  /// minimum allowed value is 5 seconds and the maximum allowed value is 1200
  /// seconds. For cross-region internal HTTP(S) load balancer, the default
  /// value is 600 seconds, the minimum allowed value is 5 seconds, and the
  /// maximum allowed value is 600 seconds. For Global external HTTP(S) load
  /// balancer (classic), this option is not available publicly.
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

  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  late final pulumi.Output<bool> proxyBind;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// A reference to the UrlMap resource that defines the mapping from URL
  /// to the BackendService.
  late final pulumi.Output<String> urlMap;

  TargetHttpProxy(
    String name, {
    TargetHttpProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetHttpProxy:TargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.httpKeepAliveTimeoutSec =
        registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.proxyId = registerOutput<int>('proxyId');
    this.selfLink = registerOutput<String>('selfLink');
    this.urlMap = registerOutput<String>('urlMap');
  }
}
