// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttp2RouteActionTargetVirtualService {
  /// Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualServiceName;

  /// Creates a new [GatewayRouteSpecHttp2RouteActionTargetVirtualService].
  /// [virtualServiceName] Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  GatewayRouteSpecHttp2RouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualServiceName': virtualServiceName,
    };
  }

  factory GatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttp2RouteActionTargetVirtualService(
      virtualServiceName: (map['virtualServiceName'] as String).input(),
    );
  }
}

