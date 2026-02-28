// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttp2RouteActionTargetVirtualService {
  final String virtualServiceName;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionTargetVirtualService].
  /// [virtualServiceName] Required.
  GetGatewayRouteSpecHttp2RouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualServiceName'] = virtualServiceName;
    return map;
  }

  factory GetGatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
