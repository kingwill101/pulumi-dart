import 'package:pulumi/pulumi.dart';
import 'region_target_https_proxy_args.dart';

/// Represents a RegionTargetHttpsProxy resource, which is used by one or more
/// forwarding rules to route incoming HTTPS requests to a URL map.
///
///
/// To get more information about RegionTargetHttpsProxy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionTargetHttpsProxies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/load-balancing/http/target-proxies)
///
/// ## Example Usage
///
/// ### Region Target Https Proxy Basic
///
///
///
/// ### Region Target Https Proxy Http Keep Alive Timeout
///
///
///
/// ### Region Target Https Proxy Mtls
///
///
///
/// ### Region Target Https Proxy Certificate Manager Certificate
///
///
///
///
/// ## Import
///
/// RegionTargetHttpsProxy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/targetHttpsProxies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionTargetHttpsProxy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default projects/{{project}}/regions/{{region}}/targetHttpsProxies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy default {{name}}
/// ```
class RegionTargetHttpsProxy extends CustomResource {
  /// URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// sslCertificates and certificateManagerCertificates can't be defined together.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}` or just the self_link `projects/{project}/locations/{location}/certificates/{resourceName}`
  late final Output<List<String>?> certificateManagerCertificates;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regioanl
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  late final Output<int?> httpKeepAliveTimeoutSec;

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

  /// The unique identifier for the resource.
  late final Output<int> proxyId;

  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  /// A URL referring to a networksecurity.ServerTlsPolicy
  /// resource that describes how the proxy should authenticate inbound
  /// traffic. serverTlsPolicy only applies to a global TargetHttpsProxy
  /// attached to globalForwardingRules with the loadBalancingScheme
  /// set to INTERNAL_SELF_MANAGED or EXTERNAL or EXTERNAL_MANAGED.
  /// For details which ServerTlsPolicy resources are accepted with
  /// INTERNAL_SELF_MANAGED and which with EXTERNAL, EXTERNAL_MANAGED
  /// loadBalancingScheme consult ServerTlsPolicy documentation.
  /// If left blank, communications are not encrypted.
  /// If you remove this field from your configuration at the same time as
  /// deleting or recreating a referenced ServerTlsPolicy resource, you will
  /// receive a resourceInUseByAnotherResource error. Use lifecycle.create_before_destroy
  /// within the ServerTlsPolicy resource to avoid this.
  late final Output<String?> serverTlsPolicy;

  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
  /// sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  late final Output<List<String>?> sslCertificates;

  /// A reference to the Region SslPolicy resource that will be associated with
  /// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
  /// resource will not have any SSL policy configured.
  late final Output<String?> sslPolicy;

  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the RegionBackendService.
  late final Output<String> urlMap;

  RegionTargetHttpsProxy(
    String name, {
    RegionTargetHttpsProxyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/regionTargetHttpsProxy:RegionTargetHttpsProxy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateManagerCertificates =
        registerOutput<List<String>?>('certificateManagerCertificates');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String?>('description');
    this.httpKeepAliveTimeoutSec =
        registerOutput<int?>('httpKeepAliveTimeoutSec');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyId = registerOutput<int>('proxyId');
    this.region = registerOutput<String>('region');
    this.selfLink = registerOutput<String>('selfLink');
    this.serverTlsPolicy = registerOutput<String?>('serverTlsPolicy');
    this.sslCertificates = registerOutput<List<String>?>('sslCertificates');
    this.sslPolicy = registerOutput<String?>('sslPolicy');
    this.urlMap = registerOutput<String>('urlMap');
  }
}
