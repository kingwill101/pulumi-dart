// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route.dart';
import 'get_gateway_route_spec_http2_route.dart';
import 'get_gateway_route_spec_http_route.dart';

class GetGatewayRouteSpec {
  final List<GetGatewayRouteSpecGrpcRoute> grpcRoutes;
  final List<GetGatewayRouteSpecHttp2Route> http2Routes;
  final List<GetGatewayRouteSpecHttpRoute> httpRoutes;
  final int priority;

  /// Creates a new [GetGatewayRouteSpec].
  /// [grpcRoutes] Required.
  /// [http2Routes] Required.
  /// [httpRoutes] Required.
  /// [priority] Required.
  GetGatewayRouteSpec({
    required this.grpcRoutes,
    required this.http2Routes,
    required this.httpRoutes,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRoutes': pulumi.Input.encodeList<GetGatewayRouteSpecGrpcRoute, Map<String, dynamic>>(grpcRoutes, (value) => value.toMap()),
      'http2Routes': pulumi.Input.encodeList<GetGatewayRouteSpecHttp2Route, Map<String, dynamic>>(http2Routes, (value) => value.toMap()),
      'httpRoutes': pulumi.Input.encodeList<GetGatewayRouteSpecHttpRoute, Map<String, dynamic>>(httpRoutes, (value) => value.toMap()),
      'priority': priority,
    };
  }

  factory GetGatewayRouteSpec.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpec(
      grpcRoutes: pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRoute>(map['grpcRoutes'], (value) => GetGatewayRouteSpecGrpcRoute.fromMap((value as Map).cast<String, dynamic>())),
      http2Routes: pulumi.Input.decodeList<GetGatewayRouteSpecHttp2Route>(map['http2Routes'], (value) => GetGatewayRouteSpecHttp2Route.fromMap((value as Map).cast<String, dynamic>())),
      httpRoutes: pulumi.Input.decodeList<GetGatewayRouteSpecHttpRoute>(map['httpRoutes'], (value) => GetGatewayRouteSpecHttpRoute.fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
    );
  }
}

