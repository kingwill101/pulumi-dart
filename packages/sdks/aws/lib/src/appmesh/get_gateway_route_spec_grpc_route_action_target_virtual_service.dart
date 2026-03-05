// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayRouteSpecGrpcRouteActionTargetVirtualService {
  final pulumi.Input<String> virtualServiceName;

  /// Creates a new [GetGatewayRouteSpecGrpcRouteActionTargetVirtualService].
  /// [virtualServiceName] Required.
  GetGatewayRouteSpecGrpcRouteActionTargetVirtualService({
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'virtualServiceName': virtualServiceName,
    };
  }

  factory GetGatewayRouteSpecGrpcRouteActionTargetVirtualService.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpecGrpcRouteActionTargetVirtualService(
      virtualServiceName: pulumi.Input.fromValue(map['virtualServiceName'] as String),
    );
  }
}

