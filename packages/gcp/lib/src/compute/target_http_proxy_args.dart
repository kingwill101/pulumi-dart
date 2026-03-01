// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_http_proxy_target_http_proxy_args_doc}
/// The set of arguments for TargetHttpProxy.
/// {@endtemplate}
/// {@macro pulumi_compute_target_http_proxy_target_http_proxy_args_doc}
class TargetHttpProxyArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value will be used. For Global
  /// external HTTP(S) load balancer, the default value is 610 seconds, the
  /// minimum allowed value is 5 seconds and the maximum allowed value is 1200
  /// seconds. For cross-region internal HTTP(S) load balancer, the default
  /// value is 600 seconds, the minimum allowed value is 5 seconds, and the
  /// maximum allowed value is 600 seconds. For Global external HTTP(S) load
  /// balancer (classic), this option is not available publicly.
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

  /// This field only applies when the forwarding rule that references
  /// this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED.
  final pulumi.Input<bool>? proxyBind;

  /// A reference to the UrlMap resource that defines the mapping from URL
  /// to the BackendService.
  final pulumi.Input<String> urlMap;

  /// Creates a new [TargetHttpProxyArgs].
  /// [description] An optional description of this resource.
  /// [httpKeepAliveTimeoutSec] Specifies how long to keep a connection open, after completing a response,
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [project] The ID of the project in which the resource belongs.
  /// [proxyBind] This field only applies when the forwarding rule that references
  /// [urlMap] A reference to the UrlMap resource that defines the mapping from URL
  TargetHttpProxyArgs({
    String? description,
    int? httpKeepAliveTimeoutSec,
    String? name,
    String? project,
    bool? proxyBind,
    required String urlMap,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       httpKeepAliveTimeoutSec = pulumi.Input.asOptionalInput<int>(
         httpKeepAliveTimeoutSec,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       proxyBind = pulumi.Input.asOptionalInput<bool>(proxyBind),
       urlMap = pulumi.Input.asInput<String>(urlMap);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'httpKeepAliveTimeoutSec': ?httpKeepAliveTimeoutSec,
      'name': ?name,
      'project': ?project,
      'proxyBind': ?proxyBind,
      'urlMap': urlMap,
    };
  }

  factory TargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return TargetHttpProxyArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      httpKeepAliveTimeoutSec: map['httpKeepAliveTimeoutSec'] == null
          ? null
          : map['httpKeepAliveTimeoutSec'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      proxyBind: map['proxyBind'] == null ? null : map['proxyBind'] as bool,
      urlMap: map['urlMap'] as String,
    );
  }
}
