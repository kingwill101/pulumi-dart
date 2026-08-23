// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecHttp2RouteActionTargetVirtualService {
  final pulumi.Input<String> virtualServiceName;

  /// Creates a new [GetGatewayRouteSpecHttp2RouteActionTargetVirtualService].
  /// [virtualServiceName] Required.
  const GetGatewayRouteSpecHttp2RouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualServiceName': virtualServiceName,
    };
  }

  factory GetGatewayRouteSpecHttp2RouteActionTargetVirtualService.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecHttp2RouteActionTargetVirtualService(
      virtualServiceName: pulumi.Input.fromValue(map['virtualServiceName'] as String),
    );
  }
}
