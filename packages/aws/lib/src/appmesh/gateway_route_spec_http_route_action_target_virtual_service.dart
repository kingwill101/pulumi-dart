// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecHttpRouteActionTargetVirtualService {
  /// Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  final String virtualServiceName;

  /// Creates a new [GatewayRouteSpecHttpRouteActionTargetVirtualService].
  /// [virtualServiceName] Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  GatewayRouteSpecHttpRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualServiceName'] = virtualServiceName;
    return map;
  }

  factory GatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
