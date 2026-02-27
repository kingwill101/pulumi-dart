import 'package:pulumi/pulumi.dart';
import 'target_tcpproxy_args.dart';

/// Represents a TargetTcpProxy resource, which is used by one or more
/// global forwarding rule to route incoming TCP requests to a Backend
/// service.
///
///
/// To get more information about TargetTcpProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetTcpProxies)
/// * How-to Guides
/// * [Setting Up TCP proxy for Google Cloud Load Balancing](https://cloud.google.com/compute/docs/load-balancing/tcp-ssl/tcp-proxy)
///
/// ## Example Usage
///
/// ### Target Tcp Proxy Basic
///
///
///
///
/// ## Import
///
/// TargetTcpProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetTcpProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetTcpProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default projects/{{project}}/global/targetTcpProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetTCPProxy:TargetTCPProxy default {{name}}
/// ```
class TargetTCPProxy extends CustomResource {
  /// A reference to the BackendService resource.
  late final Output<String> backendService;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  late final Output<bool> proxyBind;

  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  late final Output<String?> proxyHeader;

  /// The unique identifier for the resource.
  late final Output<int> proxyId;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  TargetTCPProxy(
    String name, {
    TargetTCPProxyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetTCPProxy:TargetTCPProxy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backendService = registerOutput<String>('backendService');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyBind = registerOutput<bool>('proxyBind');
    this.proxyHeader = registerOutput<String?>('proxyHeader');
    this.proxyId = registerOutput<int>('proxyId');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
