// ignore_for_file: unused_element, unnecessary_cast

/// Information about the Kubernetes Gateway API service mesh configuration.
class GatewayServiceMesh {
  /// Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  final String deployment;

  /// Name of the Gateway API HTTPRoute.
  final String httpRoute;

  /// Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  final String? routeUpdateWaitTime;

  /// Name of the Kubernetes Service.
  final String service;

  /// Creates a new [GatewayServiceMesh].
  /// [deployment] Name of the Kubernetes Deployment whose traffic is managed by the specified HTTPRoute and Service.
  /// [httpRoute] Name of the Gateway API HTTPRoute.
  /// [routeUpdateWaitTime] Optional. The time to wait for route updates to propagate. The maximum configurable time is 3 hours, in seconds format. If unspecified, there is no wait time.
  /// [service] Name of the Kubernetes Service.
  GatewayServiceMesh({
    required this.deployment,
    required this.httpRoute,
    this.routeUpdateWaitTime,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deployment': deployment,
      'httpRoute': httpRoute,
      'routeUpdateWaitTime': ?routeUpdateWaitTime,
      'service': service,
    };
  }

  factory GatewayServiceMesh.fromMap(Map<String, dynamic> map) {
    return GatewayServiceMesh(
      deployment: map['deployment'] as String,
      httpRoute: map['httpRoute'] as String,
      routeUpdateWaitTime: map['routeUpdateWaitTime'] == null
          ? null
          : map['routeUpdateWaitTime'] as String,
      service: map['service'] as String,
    );
  }
}
