// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_region_target_https_proxy_region_target_https_proxy_args_doc}
/// The set of arguments for RegionTargetHttpsProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_region_target_https_proxy_region_target_https_proxy_args_doc}
class RegionTargetHttpsProxyArgs {
  /// URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// sslCertificates and certificateManagerCertificates can't be defined together.
  /// Accepted format is `//certificatemanager.googleapis.com/projects/{project}/locations/{location}/certificates/{resourceName}` or just the self_link `projects/{project}/locations/{location}/certificates/{resourceName}`
  final pulumi.Input<List<String>>? certificateManagerCertificates;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regioanl
  /// HTTP(S) load balancer, the minimum allowed value is 5 seconds and the
  /// maximum allowed value is 600 seconds.
  final pulumi.Input<int>? httpKeepAliveTimeoutSec;

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

  /// The Region in which the created target https proxy should reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String>? region;

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
  final pulumi.Input<String>? serverTlsPolicy;

  /// URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// At least one SSL certificate must be specified. Currently, you may specify up to 15 SSL certificates.
  /// sslCertificates do not apply when the load balancing scheme is set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<List<String>>? sslCertificates;

  /// A reference to the Region SslPolicy resource that will be associated with
  /// the TargetHttpsProxy resource. If not set, the TargetHttpsProxy
  /// resource will not have any SSL policy configured.
  final pulumi.Input<String>? sslPolicy;

  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the RegionBackendService.
  final pulumi.Input<String> urlMap;

  /// Creates a new [RegionTargetHttpsProxyArgs].
  /// [certificateManagerCertificates] URLs to certificate manager certificate resources that are used to authenticate connections between users and the load balancer.
  /// [description] An optional description of this resource.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response,
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The Region in which the created target https proxy should reside.
  /// [serverTlsPolicy] A URL referring to a networksecurity.ServerTlsPolicy
  /// [sslCertificates] URLs to SslCertificate resources that are used to authenticate connections between users and the load balancer.
  /// [sslPolicy] A reference to the Region SslPolicy resource that will be associated with
  /// [urlMap] A reference to the RegionUrlMap resource that defines the mapping from URL
  RegionTargetHttpsProxyArgs({
    List<String>? certificateManagerCertificates,
    String? description,
    int? httpKeepAliveTimeoutSec,
    String? name,
    String? project,
    String? region,
    String? serverTlsPolicy,
    List<String>? sslCertificates,
    String? sslPolicy,
    required String urlMap,
  }) : certificateManagerCertificates = pulumi
           .Input.asOptionalInput<List<String>>(certificateManagerCertificates),
       description = pulumi.Input.asOptionalInput<String>(description),
       httpKeepAliveTimeoutSec = pulumi.Input.asOptionalInput<int>(
         httpKeepAliveTimeoutSec,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       region = pulumi.Input.asOptionalInput<String>(region),
       serverTlsPolicy = pulumi.Input.asOptionalInput<String>(serverTlsPolicy),
       sslCertificates = pulumi.Input.asOptionalInput<List<String>>(
         sslCertificates,
       ),
       sslPolicy = pulumi.Input.asOptionalInput<String>(sslPolicy),
       urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateManagerCertificates': ?certificateManagerCertificates,
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'serverTlsPolicy': ?serverTlsPolicy,
      'sslCertificates': ?sslCertificates,
      'sslPolicy': ?sslPolicy,
      'urlMap': urlMap,
    };
  }

  factory RegionTargetHttpsProxyArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetHttpsProxyArgs(
      certificateManagerCertificates:
          map['certificateManagerCertificates'] == null
          ? null
          : (map['certificateManagerCertificates'] as List).cast<String>(),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null
          ? null
          : map['httpKeepAliveTimeoutSec'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serverTlsPolicy: map['serverTlsPolicy'] == null
          ? null
          : map['serverTlsPolicy'] as String,
      sslCertificates: map['sslCertificates'] == null
          ? null
          : (map['sslCertificates'] as List).cast<String>(),
      sslPolicy: map['sslPolicy'] == null ? null : map['sslPolicy'] as String,
      urlMap: map['urlMap'] as String,
    );
  }
}
