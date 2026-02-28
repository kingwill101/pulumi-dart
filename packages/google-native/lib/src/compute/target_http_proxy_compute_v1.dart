import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_http_proxy_compute_v1_args.dart';

/// Creates a TargetHttpProxy resource in the specified project using the data included in the request.
class TargetHttpProxyComputeV1 extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;

  /// Fingerprint of this resource. A hash of the contents stored in this object. This field is used in optimistic locking. This field will be ignored when inserting a TargetHttpProxy. An up-to-date fingerprint must be provided in order to patch/update the TargetHttpProxy; otherwise, the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve the TargetHttpProxy.
  late final pulumi.Output<String> fingerprint;

  /// Specifies how long to keep a connection open, after completing a response, while there is no matching traffic (in seconds). If an HTTP keep-alive is not specified, a default value (610 seconds) will be used. For global external Application Load Balancers, the minimum allowed value is 5 seconds and the maximum allowed value is 1200 seconds. For classic Application Load Balancers, this option is not supported.
  late final pulumi.Output<int> httpKeepAliveTimeoutSec;

  /// Type of resource. Always compute#targetHttpProxy for target HTTP proxies.
  late final pulumi.Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// This field only applies when the forwarding rule that references this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. When this field is set to true, Envoy proxies set up inbound traffic interception and bind to the IP address and port specified in the forwarding rule. This is generally useful when using Traffic Director to configure Envoy as a gateway or middle proxy (in other words, not a sidecar proxy). The Envoy proxy listens for inbound requests and handles requests when it receives them. The default is false.
  late final pulumi.Output<bool> proxyBind;

  /// URL of the region where the regional Target HTTP Proxy resides. This field is not applicable to global Target HTTP Proxies.
  late final pulumi.Output<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// URL to the UrlMap resource that defines the mapping from URL to the BackendService.
  late final pulumi.Output<String> urlMap;

  /// Creates a new [TargetHttpProxyComputeV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetHttpProxyComputeV1]. {@macro pulumi_compute_v1_target_http_proxy_compute_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetHttpProxyComputeV1(
    String name, {
    TargetHttpProxyComputeV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:TargetHttpProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.httpKeepAliveTimeoutSec =
        registerOutput<int>('httpKeepAliveTimeoutSec');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.region = registerOutput<String>('region');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.urlMap = registerOutput<String>('urlMap');
  }
}
