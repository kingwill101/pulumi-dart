import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_grpc_proxy_args.dart';

/// Represents a Target gRPC Proxy resource. A target gRPC proxy is a component
/// of load balancers intended for load balancing gRPC traffic. Global forwarding
/// rules reference a target gRPC proxy. The Target gRPC Proxy references
/// a URL map which specifies how traffic routes to gRPC backend services.
///
///
/// To get more information about TargetGrpcProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/targetGrpcProxies)
/// * How-to Guides
/// * [Using Target gRPC Proxies](https://cloud.google.com/traffic-director/docs/proxyless-overview)
///
/// ## Example Usage
///
/// ### Target Grpc Proxy Basic
///
///
///
///
/// ## Import
///
/// TargetGrpcProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetGrpcProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetGrpcProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetGrpcProxy:TargetGrpcProxy default projects/{{project}}/global/targetGrpcProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetGrpcProxy:TargetGrpcProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetGrpcProxy:TargetGrpcProxy default {{name}}
/// ```
class TargetGrpcProxy extends pulumi.CustomResource {
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. A hash of the contents stored in
  /// this object. This field is used in optimistic locking. This field
  /// will be ignored when inserting a TargetGrpcProxy. An up-to-date
  /// fingerprint must be provided in order to patch/update the
  /// TargetGrpcProxy; otherwise, the request will fail with error
  /// 412 conditionNotMet. To see the latest fingerprint, make a get()
  /// request to retrieve the TargetGrpcProxy. A base64-encoded string.
  late final pulumi.Output<String> fingerprint;

  /// Name of the resource. Provided by the client when the resource
  /// is created. The name must be 1-63 characters long, and comply
  /// with RFC1035. Specifically, the name must be 1-63 characters long
  /// and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL with id for the resource.
  late final pulumi.Output<String> selfLinkWithId;

  /// URL to the UrlMap resource that defines the mapping from URL to
  /// the BackendService. The protocol field in the BackendService
  /// must be set to GRPC.
  late final pulumi.Output<String?> urlMap;

  /// If true, indicates that the BackendServices referenced by
  /// the urlMap may be accessed by gRPC applications without using
  /// a sidecar proxy. This will enable configuration checks on urlMap
  /// and its referenced BackendServices to not allow unsupported features.
  /// A gRPC application must use "xds:///" scheme in the target URI
  /// of the service it is connecting to. If false, indicates that the
  /// BackendServices referenced by the urlMap will be accessed by gRPC
  /// applications via a sidecar proxy. In this case, a gRPC application
  /// must not use "xds:///" scheme in the target URI of the service
  /// it is connecting to
  late final pulumi.Output<bool?> validateForProxyless;

  TargetGrpcProxy(
    String name, {
    TargetGrpcProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetGrpcProxy:TargetGrpcProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.selfLink = registerOutput<String>('selfLink');
    this.selfLinkWithId = registerOutput<String>('selfLinkWithId');
    this.urlMap = registerOutput<String?>('urlMap');
    this.validateForProxyless = registerOutput<bool?>('validateForProxyless');
  }
}
