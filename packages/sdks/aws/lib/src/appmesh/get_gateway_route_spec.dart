// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_route_spec_grpc_route.dart';
import 'get_gateway_route_spec_http2_route.dart';
import 'get_gateway_route_spec_http_route.dart';

class GetGatewayRouteSpec {
  final pulumi.Input<List<GetGatewayRouteSpecGrpcRoute>> grpcRoutes;
  final pulumi.Input<List<GetGatewayRouteSpecHttp2Route>> http2Routes;
  final pulumi.Input<List<GetGatewayRouteSpecHttpRoute>> httpRoutes;
  final pulumi.Input<int> priority;

  /// Creates a new [GetGatewayRouteSpec].
  /// [grpcRoutes] Required.
  /// [http2Routes] Required.
  /// [httpRoutes] Required.
  /// [priority] Required.
  const GetGatewayRouteSpec({
    required this.grpcRoutes,
    required this.http2Routes,
    required this.httpRoutes,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRoutes': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecGrpcRoute>, List<Map<String, dynamic>>>(grpcRoutes, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecGrpcRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'http2Routes': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttp2Route>, List<Map<String, dynamic>>>(http2Routes, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttp2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRoutes': pulumi.Input.mapInputValue<List<GetGatewayRouteSpecHttpRoute>, List<Map<String, dynamic>>>(httpRoutes, (value) => pulumi.Input.encodeList<GetGatewayRouteSpecHttpRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
    };
  }

  factory GetGatewayRouteSpec.fromMap(Map<String, dynamic> map) {
    return GetGatewayRouteSpec(
      grpcRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecGrpcRoute>(map['grpcRoutes']!, (value) => GetGatewayRouteSpecGrpcRoute.fromMap((value as Map).cast<String, dynamic>()))),
      http2Routes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttp2Route>(map['http2Routes']!, (value) => GetGatewayRouteSpecHttp2Route.fromMap((value as Map).cast<String, dynamic>()))),
      httpRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetGatewayRouteSpecHttpRoute>(map['httpRoutes']!, (value) => GetGatewayRouteSpecHttpRoute.fromMap((value as Map).cast<String, dynamic>()))),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
    );
  }
}
