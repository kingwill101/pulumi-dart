// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RegionTargetHttpProxy.
class RegionTargetHttpProxyArgs {
  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Specifies how long to keep a connection open, after completing a response,
  /// while there is no matching traffic (in seconds). If an HTTP keepalive is
  /// not specified, a default value (600 seconds) will be used. For Regional
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

  /// A reference to the RegionUrlMap resource that defines the mapping from URL
  /// to the BackendService.
  final pulumi.Input<String> urlMap;

  RegionTargetHttpProxyArgs({
    this.description,
    this.httpKeepAliveTimeoutSec,
    this.name,
    this.project,
    this.region,
    required this.urlMap,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    map['urlMap'] = urlMap;
    return map;
  }

  factory RegionTargetHttpProxyArgs.fromMap(Map<String, dynamic> map) {
    return RegionTargetHttpProxyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      httpKeepAliveTimeoutSec:
          pulumi.Input.asOptionalInput<int>(map['httpKeepAliveTimeoutSec']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      urlMap: pulumi.Input.asInput<String>(map['urlMap']),
    );
  }
}
