// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route.dart';
import 'get_route_spec_http2_route.dart';
import 'get_route_spec_http_route.dart';
import 'get_route_spec_tcp_route.dart';

class GetRouteSpec {
  final pulumi.Input<List<GetRouteSpecGrpcRoute>> grpcRoutes;
  final pulumi.Input<List<GetRouteSpecHttp2Route>> http2Routes;
  final pulumi.Input<List<GetRouteSpecHttpRoute>> httpRoutes;
  final pulumi.Input<int> priority;
  final pulumi.Input<List<GetRouteSpecTcpRoute>> tcpRoutes;

  /// Creates a new [GetRouteSpec].
  /// [grpcRoutes] Required.
  /// [http2Routes] Required.
  /// [httpRoutes] Required.
  /// [priority] Required.
  /// [tcpRoutes] Required.
  const GetRouteSpec({
    required this.grpcRoutes,
    required this.http2Routes,
    required this.httpRoutes,
    required this.priority,
    required this.tcpRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRoutes': pulumi.Input.mapInputValue<List<GetRouteSpecGrpcRoute>, List<Map<String, dynamic>>>(grpcRoutes, (value) => pulumi.Input.encodeList<GetRouteSpecGrpcRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'http2Routes': pulumi.Input.mapInputValue<List<GetRouteSpecHttp2Route>, List<Map<String, dynamic>>>(http2Routes, (value) => pulumi.Input.encodeList<GetRouteSpecHttp2Route, Map<String, dynamic>>(value, (value) => value.toMap())),
      'httpRoutes': pulumi.Input.mapInputValue<List<GetRouteSpecHttpRoute>, List<Map<String, dynamic>>>(httpRoutes, (value) => pulumi.Input.encodeList<GetRouteSpecHttpRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'tcpRoutes': pulumi.Input.mapInputValue<List<GetRouteSpecTcpRoute>, List<Map<String, dynamic>>>(tcpRoutes, (value) => pulumi.Input.encodeList<GetRouteSpecTcpRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpec.fromMap(Map<String, dynamic> map) {
    return GetRouteSpec(
      grpcRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecGrpcRoute>(map['grpcRoutes']!, (value) => GetRouteSpecGrpcRoute.fromMap((value as Map).cast<String, dynamic>()))),
      http2Routes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttp2Route>(map['http2Routes']!, (value) => GetRouteSpecHttp2Route.fromMap((value as Map).cast<String, dynamic>()))),
      httpRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecHttpRoute>(map['httpRoutes']!, (value) => GetRouteSpecHttpRoute.fromMap((value as Map).cast<String, dynamic>()))),
      priority: pulumi.Input.fromValue((map['priority'] as num).toInt()),
      tcpRoutes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteSpecTcpRoute>(map['tcpRoutes']!, (value) => GetRouteSpecTcpRoute.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
