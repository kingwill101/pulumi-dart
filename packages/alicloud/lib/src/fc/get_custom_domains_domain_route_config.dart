// ignore_for_file: unused_element, unnecessary_cast


class GetCustomDomainsDomainRouteConfig {
  /// The name of the Function Compute function that requests are routed to.
  final String functionName;
  /// The requests of the specified HTTP methos are routed from. Valid method: GET, POST, DELETE, HEAD, PUT and PATCH. For example, "GET, HEAD" methods indicate that only requests from GET and HEAD methods are routed.
  final List<String> methods;
  /// The path that requests are routed from.
  final String path;
  /// The version or alias of the Function Compute service that requests are routed to. For example, qualifier v1 indicates that the requests are routed to the version 1 Function Compute service.
  final String qualifier;
  /// The name of the Function Compute service that requests are routed to.
  final String serviceName;

  /// Creates a new [GetCustomDomainsDomainRouteConfig].
  /// [functionName] The name of the Function Compute function that requests are routed to.
  /// [methods] The requests of the specified HTTP methos are routed from. Valid method: GET, POST, DELETE, HEAD, PUT and PATCH. For example, "GET, HEAD" methods indicate that only requests from GET and HEAD methods are routed.
  /// [path] The path that requests are routed from.
  /// [qualifier] The version or alias of the Function Compute service that requests are routed to. For example, qualifier v1 indicates that the requests are routed to the version 1 Function Compute service.
  /// [serviceName] The name of the Function Compute service that requests are routed to.
  GetCustomDomainsDomainRouteConfig({
    required this.functionName,
    required this.methods,
    required this.path,
    required this.qualifier,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'methods': methods,
      'path': path,
      'qualifier': qualifier,
      'serviceName': serviceName,
    };
  }

  factory GetCustomDomainsDomainRouteConfig.fromMap(Map<String, dynamic> map) {
    return GetCustomDomainsDomainRouteConfig(
      functionName: map['functionName'] as String,
      methods: (map['methods'] as List).cast<String>(),
      path: map['path'] as String,
      qualifier: map['qualifier'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

