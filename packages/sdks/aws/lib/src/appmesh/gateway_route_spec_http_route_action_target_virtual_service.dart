// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayRouteSpecHttpRouteActionTargetVirtualService {
  /// Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> virtualServiceName;

  /// Creates a new [GatewayRouteSpecHttpRouteActionTargetVirtualService].
  /// [virtualServiceName] Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.
  GatewayRouteSpecHttpRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualServiceName': virtualServiceName,
    };
  }

  factory GatewayRouteSpecHttpRouteActionTargetVirtualService.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpecHttpRouteActionTargetVirtualService(
      virtualServiceName: pulumi.Input.fromValue(map['virtualServiceName'] as String),
    );
  }
}

