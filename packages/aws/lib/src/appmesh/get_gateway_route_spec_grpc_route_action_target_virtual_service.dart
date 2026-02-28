// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecGrpcRouteActionTargetVirtualService {
  final String virtualServiceName;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteActionTargetVirtualService].
  /// [virtualServiceName] Required.
  GetGatewayRouteSpecGrpcRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['virtualServiceName'] = virtualServiceName;
    return map;
  }

  factory GetGatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap(
      Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
