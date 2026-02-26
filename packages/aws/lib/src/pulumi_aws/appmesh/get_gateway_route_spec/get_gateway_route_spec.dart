// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_gateway_route_spec_grpc_route/get_gateway_route_spec_grpc_route.dart';
import '../get_gateway_route_spec_http2_route/get_gateway_route_spec_http2_route.dart';
import '../get_gateway_route_spec_http_route/get_gateway_route_spec_http_route.dart';

class GetGatewayRouteSpec {
  final List<GetGatewayRouteSpecGrpcRoute> grpcRoutes;
  final List<GetGatewayRouteSpecHttp2Route> http2Routes;
  final List<GetGatewayRouteSpecHttpRoute> httpRoutes;
  final int priority;

  GetGatewayRouteSpec({
    required this.grpcRoutes,
    required this.http2Routes,
    required this.httpRoutes,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grpcRoutes'] =
        Input.encodeList<GetGatewayRouteSpecGrpcRoute, Map<String, dynamic>>(
            grpcRoutes, (value) => value.toMap());
    map['http2Routes'] =
        Input.encodeList<GetGatewayRouteSpecHttp2Route, Map<String, dynamic>>(
            http2Routes, (value) => value.toMap());
    map['httpRoutes'] =
        Input.encodeList<GetGatewayRouteSpecHttpRoute, Map<String, dynamic>>(
            httpRoutes, (value) => value.toMap());
    map['priority'] = priority;
    return map;
  }

  factory GetGatewayRouteSpec.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpec(
      grpcRoutes: Input.decodeList<GetGatewayRouteSpecGrpcRoute>(
          map['grpcRoutes'],
          (value) => GetGatewayRouteSpecGrpcRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      http2Routes: Input.decodeList<GetGatewayRouteSpecHttp2Route>(
          map['http2Routes'],
          (value) => GetGatewayRouteSpecHttp2Route.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpRoutes: Input.decodeList<GetGatewayRouteSpecHttpRoute>(
          map['httpRoutes'],
          (value) => GetGatewayRouteSpecHttpRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
    );
  }
}
