// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_route_spec_grpc_route/get_route_spec_grpc_route.dart';
import '../get_route_spec_http2_route/get_route_spec_http2_route.dart';
import '../get_route_spec_http_route/get_route_spec_http_route.dart';
import '../get_route_spec_tcp_route/get_route_spec_tcp_route.dart';

class GetRouteSpec {
  final List<GetRouteSpecGrpcRoute> grpcRoutes;
  final List<GetRouteSpecHttp2Route> http2Routes;
  final List<GetRouteSpecHttpRoute> httpRoutes;
  final int priority;
  final List<GetRouteSpecTcpRoute> tcpRoutes;

  GetRouteSpec({
    required this.grpcRoutes,
    required this.http2Routes,
    required this.httpRoutes,
    required this.priority,
    required this.tcpRoutes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grpcRoutes'] =
        Input.encodeList<GetRouteSpecGrpcRoute, Map<String, dynamic>>(
            grpcRoutes, (value) => value.toMap());
    map['http2Routes'] =
        Input.encodeList<GetRouteSpecHttp2Route, Map<String, dynamic>>(
            http2Routes, (value) => value.toMap());
    map['httpRoutes'] =
        Input.encodeList<GetRouteSpecHttpRoute, Map<String, dynamic>>(
            httpRoutes, (value) => value.toMap());
    map['priority'] = priority;
    map['tcpRoutes'] =
        Input.encodeList<GetRouteSpecTcpRoute, Map<String, dynamic>>(
            tcpRoutes, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpec.fromMap(Map<String, dynamic> map) {
    return GetRouteSpec(
      grpcRoutes: Input.decodeList<GetRouteSpecGrpcRoute>(
          map['grpcRoutes'],
          (value) => GetRouteSpecGrpcRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      http2Routes: Input.decodeList<GetRouteSpecHttp2Route>(
          map['http2Routes'],
          (value) => GetRouteSpecHttp2Route.fromMap(
              (value as Map).cast<String, dynamic>())),
      httpRoutes: Input.decodeList<GetRouteSpecHttpRoute>(
          map['httpRoutes'],
          (value) => GetRouteSpecHttpRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      tcpRoutes: Input.decodeList<GetRouteSpecTcpRoute>(
          map['tcpRoutes'],
          (value) => GetRouteSpecTcpRoute.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
