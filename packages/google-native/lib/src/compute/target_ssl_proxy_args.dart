// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_ssl_proxy_proxy_header.dart';

/// {@template pulumi_compute_alpha_target_ssl_proxy_args_doc}
/// The set of arguments for TargetSslProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_target_ssl_proxy_args_doc}
class TargetSslProxyArgs {
  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  final pulumi.Input<String>? certificateMap;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final pulumi.Input<TargetSslProxyProxyHeader>? proxyHeader;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// URL to the BackendService resource.
  final pulumi.Input<String>? service;
  /// URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<String>>? sslCertificates;
  /// URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [TargetSslProxyArgs].
  /// [certificateMap] URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [service] URL to the BackendService resource.
  /// [sslCertificates] URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  /// [sslPolicy] URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  TargetSslProxyArgs({
    String? certificateMap,
    String? description,
    String? name,
    String? project,
    TargetSslProxyProxyHeader? proxyHeader,
    String? requestId,
    String? service,
    List<String>? sslCertificates,
    String? sslPolicy,
  }) :
      certificateMap = pulumi.Input.asOptionalInput<String>(certificateMap),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      proxyHeader = pulumi.Input.asOptionalInput<TargetSslProxyProxyHeader>(proxyHeader),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      service = pulumi.Input.asOptionalInput<String>(service),
      sslCertificates = pulumi.Input.asOptionalInput<List<String>>(sslCertificates),
      sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateMap': ?certificateMap,
      'description': ?description,
      'name': ?name,
      'project': ?project,
      'proxyHeader': ?pulumi.Input.mapOptionalInputValue<TargetSslProxyProxyHeader, String>(proxyHeader, (value) => value.value),
      'requestId': ?requestId,
      'service': ?service,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory TargetSslProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetSslProxyArgs(
      certificateMap: map['certificateMap'] == null ? null : map['certificateMap'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      proxyHeader: map['proxyHeader'] == null ? null : TargetSslProxyProxyHeader.fromValue(map['proxyHeader'] as String),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      service: map['service'] == null ? null : map['service'] as String,
      sslCertificates: map['sslCertificates'] == null ? null : (map['sslCertificates'] as List).cast<String>(),
      sslPolicy: map['sslPolicy'] == null ? null : map['sslPolicy'] as String,
    );
  }
}

