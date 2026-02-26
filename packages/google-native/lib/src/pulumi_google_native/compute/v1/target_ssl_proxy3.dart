import 'package:pulumi/pulumi.dart';
import 'target_ssl_proxy_args3.dart';

/// Creates a TargetSslProxy resource in the specified project using the data included in the request.
class TargetSslProxy3 extends CustomResource {
  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  late final Output<String> certificateMap;

  /// Creation timestamp in RFC3339 text format.
  late final Output<String> creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final Output<String> description;

  /// Type of the resource. Always compute#targetSslProxy for target SSL proxies.
  late final Output<String> kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final Output<String> name;
  late final Output<String> project;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  late final Output<String> proxyHeader;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Server-defined URL for the resource.
  late final Output<String> selfLink;

  /// URL to the BackendService resource.
  late final Output<String> service;

  /// URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  late final Output<List<String>> sslCertificates;

  /// URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  late final Output<String> sslPolicy;

  TargetSslProxy3(
    String name, {
    TargetSslProxyArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:compute/v1:TargetSslProxy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.certificateMap = registerOutput<String>('certificateMap');
    this.creationTimestamp = registerOutput<String>('creationTimestamp');
    this.description = registerOutput<String>('description');
    this.kind = registerOutput<String>('kind');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.proxyHeader = registerOutput<String>('proxyHeader');
    this.requestId = registerOutput<String?>('requestId');
    this.selfLink = registerOutput<String>('selfLink');
    this.service = registerOutput<String>('service');
    this.sslCertificates = registerOutput<List<String>>('sslCertificates');
    this.sslPolicy = registerOutput<String>('sslPolicy');
  }
}
