// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttp2RouteActionTargetVirtualService {
  /// Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  final String virtualServiceName;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionTargetVirtualService].
  /// [virtualServiceName] Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  GatewayRouteSpecHttp2RouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualServiceName'] = virtualServiceName;
    return map;
  }

  factory GatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
