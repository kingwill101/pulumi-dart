import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_sslproxy_args.dart';

/// Represents a TargetSslProxy resource, which is used by one or more
/// global forwarding rule to route incoming SSL requests to a backend
/// service.
///
///
/// To get more information about TargetSslProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/v1/targetSslProxies)
/// * How-to Guides
/// * [Setting Up SSL proxy for Google Cloud Load Balancing](https://cloud.google.com/compute/docs/load-balancing/tcp-ssl/)
///
/// ## Example Usage
///
/// ### Target Ssl Proxy Basic
///
///
///
///
/// ## Import
///
/// TargetSslProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/targetSslProxies/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, TargetSslProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default projects/{{project}}/global/targetSslProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/targetSSLProxy:TargetSSLProxy default {{name}}
/// ```
class TargetSSLProxy extends pulumi.CustomResource {
  /// A reference to the BackendService resource.
  late final pulumi.Output<String> backendService;

  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field can only be set for global target proxies.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  late final pulumi.Output<String?> certificateMap;

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

  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  late final pulumi.Output<String?> proxyHeader;

  /// The unique identifier for the resource.
  late final pulumi.Output<int> proxyId;

  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;

  /// A list of SslCertificate resources that are used to authenticate
  /// connections between users and the load balancer. At least one
  /// SSL certificate must be specified.
  late final pulumi.Output<List<String>?> sslCertificates;

  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetSslProxy resource. If not set, the TargetSslProxy
  /// resource will not have any SSL policy configured.
  late final pulumi.Output<String?> sslPolicy;

  TargetSSLProxy(
    String name, {
    TargetSSLProxyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/targetSSLProxy:TargetSSLProxy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backendService = registerOutput<String>('backendService');
    this.certificateMap = registerOutput<String?>('certificateMap');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyHeader = registerOutput<String?>('proxyHeader');
    this.proxyId = registerOutput<int>('proxyId');
    this.selfLink = registerOutput<String>('selfLink');
    this.sslCertificates = registerOutput<List<String>?>('sslCertificates');
    this.sslPolicy = registerOutput<String?>('sslPolicy');
  }
}
