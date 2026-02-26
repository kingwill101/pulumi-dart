// ignore_for_file: unused_element, unnecessary_cast

class GatewayRouteSpecGrpcRouteActionTargetVirtualService {
  /// Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  final String virtualServiceName;

  GatewayRouteSpecGrpcRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualServiceName'] = virtualServiceName;
    return map;
  }

  factory GatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap(
      Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
