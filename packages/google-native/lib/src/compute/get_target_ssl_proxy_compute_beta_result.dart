// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTargetSslProxy.
class GetTargetSslProxyComputeBetaResult {
  /// URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  final String certificateMap;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Type of the resource. Always compute#targetSslProxy for target SSL proxies.
  final String kind;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  final String proxyHeader;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// URL to the BackendService resource.
  final String service;

  /// URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final List<String> sslCertificates;

  /// URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  final String sslPolicy;

  /// Creates a new [GetTargetSslProxyComputeBetaResult].
  /// [certificateMap] URL of a certificate map that identifies a certificate map associated with the given target proxy. This field can only be set for global target proxies. If set, sslCertificates will be ignored. Accepted format is //certificatemanager.googleapis.com/projects/{project }/locations/{location}/certificateMaps/{resourceName}.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [kind] Type of the resource. Always compute#targetSslProxy for target SSL proxies.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [proxyHeader] Specifies the type of proxy header to append before sending data to the backend, either NONE or PROXY_V1. The default is NONE.
  /// [selfLink] Server-defined URL for the resource.
  /// [service] URL to the BackendService resource.
  /// [sslCertificates] URLs to SslCertificate resources that are used to authenticate connections to Backends. At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates. sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  /// [sslPolicy] URL of SslPolicy resource that will be associated with the TargetSslProxy resource. If not set, the TargetSslProxy resource will not have any SSL policy configured.
  GetTargetSslProxyComputeBetaResult({
    required this.certificateMap,
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.name,
    required this.proxyHeader,
    required this.selfLink,
    required this.service,
    required this.sslCertificates,
    required this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateMap'] = certificateMap;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['kind'] = kind;
    map['name'] = name;
    map['proxyHeader'] = proxyHeader;
    map['selfLink'] = selfLink;
    map['service'] = service;
    map['sslCertificates'] = sslCertificates;
    map['sslPolicy'] = sslPolicy;
    return map;
  }

  factory GetTargetSslProxyComputeBetaResult.fromMap(Map<String, dynamic> map) {
    return GetTargetSslProxyComputeBetaResult(
      certificateMap: map['certificateMap'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      proxyHeader: map['proxyHeader'] as String,
      selfLink: map['selfLink'] as String,
      service: map['service'] as String,
      sslCertificates: (map['sslCertificates'] as List).cast<String>(),
      sslPolicy: map['sslPolicy'] as String,
    );
  }
}
