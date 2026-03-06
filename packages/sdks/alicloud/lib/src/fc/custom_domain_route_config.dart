// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomDomainRouteConfig {
  /// The name of the Function Compute function that requests are routed to.
  final pulumi.Input<String> functionName;
  /// The requests of the specified HTTP methos are routed from. Valid method: GET, POST, DELETE, HEAD, PUT and PATCH. For example, "GET, HEAD" methods indicate that only requests from GET and HEAD methods are routed.
  final pulumi.Input<List<String>>? methods;
  /// The path that requests are routed from.
  final pulumi.Input<String> path;
  /// The version or alias of the Function Compute service that requests are routed to. For example, qualifier v1 indicates that the requests are routed to the version 1 Function Compute service. For detail information about version and alias, please refer to the [developer guide](https://www.alibabacloud.com/help/doc-detail/96464.htm).
  final pulumi.Input<String>? qualifier;
  /// The name of the Function Compute service that requests are routed to.
  final pulumi.Input<String> serviceName;

  /// Creates a new [CustomDomainRouteConfig].
  /// [functionName] The name of the Function Compute function that requests are routed to.
  /// [methods] The requests of the specified HTTP methos are routed from. Valid method: GET, POST, DELETE, HEAD, PUT and PATCH. For example, "GET, HEAD" methods indicate that only requests from GET and HEAD methods are routed.
  /// [path] The path that requests are routed from.
  /// [qualifier] The version or alias of the Function Compute service that requests are routed to. For example, qualifier v1 indicates that the requests are routed to the version 1 Function Compute service. For detail information about version and alias, please refer to the [developer guide](https://www.alibabacloud.com/help/doc-detail/96464.htm).
  /// [serviceName] The name of the Function Compute service that requests are routed to.
  const CustomDomainRouteConfig({
    required this.functionName,
    this.methods,
    required this.path,
    this.qualifier,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'methods': ?methods,
      'path': path,
      'qualifier': ?qualifier,
      'serviceName': serviceName,
    };
  }

  factory CustomDomainRouteConfig.fromMap(Map<String, dynamic> map) {
    return CustomDomainRouteConfig(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
      qualifier: (() { final guardedValue = map['qualifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

