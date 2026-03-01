// ignore_for_file: unused_element, unnecessary_cast

class GetGatewayRouteSpecHttpRouteActionTargetVirtualService {
  final String virtualServiceName;

  /// Creates a new [GetGatewayRouteSpecHttpRouteActionTargetVirtualService].
  /// [virtualServiceName] Required.
  GetGatewayRouteSpecHttpRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'virtualServiceName': virtualServiceName};
  }

  factory GetGatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayRouteSpecHttpRouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}
