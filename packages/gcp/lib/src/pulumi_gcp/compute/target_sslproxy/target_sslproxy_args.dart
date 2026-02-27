// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for TargetSSLProxy.
class TargetSSLProxyArgs {
  /// A reference to the BackendService resource.
  final pulumi.Input<String> backendService;

  /// A reference to the CertificateMap resource uri that identifies a certificate map
  /// associated with the given target proxy. This field can only be set for global target proxies.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificateMaps/{resourceName}`.
  final pulumi.Input<String>? certificateMap;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Specifies the type of proxy header to append before sending data to
  /// the backend.
  /// Default value is `NONE`.
  /// Possible values are: `NONE`, `PROXY_V1`.
  final pulumi.Input<String>? proxyHeader;

  /// A list of SslCertificate resources that are used to authenticate
  /// connections between users and the load balancer. At least one
  /// SSL certificate must be specified.
  final pulumi.Input<List<String>>? sslCertificates;

  /// A reference to the SslPolicy resource that will be associated with
  /// the TargetSslProxy resource. If not set, the TargetSslProxy
  /// resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;

  TargetSSLProxyArgs({
    required this.backendService,
    this.certificateMap,
    this.description,
    this.name,
    this.project,
    this.proxyHeader,
    this.sslCertificates,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
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
      map['proxyHeader'] = proxyHeaderValue;
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

  factory TargetSSLProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetSSLProxyArgs(
      backendService: pulumi.Input.asInput<String>(map['backendService']),
      certificateMap:
          pulumi.Input.asOptionalInput<String>(map['certificateMap']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      proxyHeader: pulumi.Input.asOptionalInput<String>(map['proxyHeader']),
      sslCertificates:
          pulumi.Input.asOptionalInput<List<String>>(map['sslCertificates']),
      sslPolicy: pulumi.Input.asOptionalInput<String>(map['sslPolicy']),
    );
  }
}
