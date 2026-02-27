// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_ssl_proxy_proxy_header_compute_beta.dart';

/// The set of arguments for TargetSslProxy.
class TargetSslProxyComputeBetaArgs {
  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  final pulumi.Input<String>? certificateMap;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final pulumi.Input<TargetSslProxyProxyHeaderComputeBeta>? proxyHeader;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// URL to the BackendService resource.
  final pulumi.Input<String>? service;

  /// URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<String>>? sslCertificates;

  /// URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;

  TargetSslProxyComputeBetaArgs({
    this.certificateMap,
    this.description,
    this.name,
    this.project,
    this.proxyHeader,
    this.requestId,
    this.service,
    this.sslCertificates,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateMapValue = certificateMap;
    if (certificateMapValue != null) {
      map['certificateMap'] = certificateMapValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final proxyHeaderValue = proxyHeader;
    if (proxyHeaderValue != null) {
      map['proxyHeader'] = pulumi.Input.mapOptionalInputValue<
          TargetSslProxyProxyHeaderComputeBeta,
          String>(proxyHeaderValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final serviceValue = service;
    if (serviceValue != null) {
      map['service'] = serviceValue;
    }
    final sslCertificatesValue = sslCertificates;
    if (sslCertificatesValue != null) {
      map['sslCertificates'] = sslCertificatesValue;
    }
    final sslPolicyValue = sslPolicy;
    if (sslPolicyValue != null) {
      map['sslPolicy'] = sslPolicyValue;
    }
    return map;
  }

  factory TargetSslProxyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return TargetSslProxyComputeBetaArgs(
      certificateMap:
          pulumi.Input.asOptionalInput<String>(map['certificateMap']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      proxyHeader:
          pulumi.Input.asOptionalInput<TargetSslProxyProxyHeaderComputeBeta>(
              map['proxyHeader']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      service: pulumi.Input.asOptionalInput<String>(map['service']),
      sslCertificates:
          pulumi.Input.asOptionalInput<List<String>>(map['sslCertificates']),
      sslPolicy: pulumi.Input.asOptionalInput<String>(map['sslPolicy']),
    );
  }
}
