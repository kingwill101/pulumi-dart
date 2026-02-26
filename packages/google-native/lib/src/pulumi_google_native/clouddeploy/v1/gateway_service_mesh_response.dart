// ignore_for_file: unused_element, unnecessary_cast

/// Information about the Kubernetes Gateway API service mesh configuration.
class GatewayServiceMeshResponse {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  final String deployment;

  /// Name of the Gateway API HTTPRoute.
  final String httpRoute;

  /// Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  final String routeUpdateWaitTime;

  /// Name of the Kubernetes Service.
  final String service;

  GatewayServiceMeshResponse({
    required this.deployment,
    required this.httpRoute,
    required this.routeUpdateWaitTime,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployment'] = deployment;
    map['httpRoute'] = httpRoute;
    map['routeUpdateWaitTime'] = routeUpdateWaitTime;
    map['service'] = service;
    return map;
  }

  factory GatewayServiceMeshResponse.fromMap(Map<String, dynamic> map) {
    return GatewayServiceMeshResponse(
      deployment: map['deployment'] as String,
      httpRoute: map['httpRoute'] as String,
      routeUpdateWaitTime: map['routeUpdateWaitTime'] as String,
      service: map['service'] as String,
    );
  }
}
