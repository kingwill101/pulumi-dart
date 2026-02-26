// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RegionTargetHttpsProxy.
class RegionTargetHttpsProxyArgs {
  /// URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// sslCertificates and certificateManagerCertificates can't be defined together.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}` or just the<span pulumi-lang-nodejs=" selfLink " pulumi-lang-dotnet=" SelfLink " pulumi-lang-go=" selfLink " pulumi-lang-python=" self_link " pulumi-lang-yaml=" selfLink " pulumi-lang-java=" selfLink "> self_link </span>`projects/{project}/locations/{location}/certificates/{resourceName}`
  final Input<List<String>>? certificateManagerCertificates;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regioanl
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  final Input<int>? httpKeepAliveTimeoutSec;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  final Input<String>? region;

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
  final Input<String>? serverTlsPolicy;

  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
  /// sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final Input<List<String>>? sslCertificates;

  /// A reference to the Region SslPolicy resource that will be associated with
  /// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
  /// resource will not have any SSL policy configured.
  final Input<String>? sslPolicy;

  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the RegionBackendService.
  final Input<String> urlMap;

  RegionTargetHttpsProxyArgs({
    this.certificateManagerCertificates,
    this.description,
    this.httpKeepAliveTimeoutSec,
    this.name,
    this.project,
    this.region,
    this.serverTlsPolicy,
    this.sslCertificates,
    this.sslPolicy,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateManagerCertificatesValue = certificateManagerCertificates;
    if (certificateManagerCertificatesValue != null) {
      map['certificateManagerCertificates'] =
          certificateManagerCertificatesValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final httpKeepAliveTimeoutSecValue = httpKeepAliveTimeoutSec;
    if (httpKeepAliveTimeoutSecValue != null) {
      map['httpKeepAliveTimeoutSec'] = httpKeepAliveTimeoutSecValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final serverTlsPolicyValue = serverTlsPolicy;
    if (serverTlsPolicyValue != null) {
      map['serverTlsPolicy'] = serverTlsPolicyValue;
    }
    final sslCertificatesValue = sslCertificates;
    if (sslCertificatesValue != null) {
      map['sslCertificates'] = sslCertificatesValue;
    }
    final sslPolicyValue = sslPolicy;
    if (sslPolicyValue != null) {
      map['sslPolicy'] = sslPolicyValue;
    }
    map['urlMap'] = urlMap;
    return map;
  }

  factory RegionTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetHttpsProxyArgs(
      certificateManagerCertificates: Input.asOptionalInput<List<String>>(
          map['certificateManagerCertificates']),
      description: Input.asOptionalInput<String>(map['description']),
      httpKeepAliveTimeoutSec:
          Input.asOptionalInput<int>(map['httpKeepAliveTimeoutSec']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      serverTlsPolicy: Input.asOptionalInput<String>(map['serverTlsPolicy']),
      sslCertificates:
          Input.asOptionalInput<List<String>>(map['sslCertificates']),
      sslPolicy: Input.asOptionalInput<String>(map['sslPolicy']),
      urlMap: Input.asInput<String>(map['urlMap']),
    );
  }
}
