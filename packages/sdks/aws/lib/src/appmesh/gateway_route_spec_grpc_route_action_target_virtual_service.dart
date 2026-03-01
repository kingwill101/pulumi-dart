// ignore_for_file: unused_element, unnecessary_cast


class GatewayRouteSpecGrpcRouteActionTargetVirtualService {
  /// Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  final String virtualServiceName;

  /// Creates a new [GatewayRouteSpecGrpcRouteActionTargetVirtualService].
  /// [virtualServiceName] Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  GatewayRouteSpecGrpcRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualServiceName': virtualServiceName,
    };
  }

  factory GatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecGrpcRouteActionTargetVirtualService(
      virtualServiceName: map['virtualServiceName'] as String,
    );
  }
}

