// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_grpc_route/route_spec_grpc_route.dart';
import '../route_spec_http2_route/route_spec_http2_route.dart';
import '../route_spec_http_route/route_spec_http_route.dart';
import '../route_spec_tcp_route/route_spec_tcp_route.dart';

class RouteSpec {
  /// GRPC routing information for the route.
  final RouteSpecGrpcRoute? grpcRoute;

  /// HTTP/2 routing information for the route.
  final RouteSpecHttp2Route? http2Route;

  /// HTTP routing information for the route.
  final RouteSpecHttpRoute? httpRoute;

  /// Priority for the route, between `0` and `1000`.
  /// Routes are matched based on the specified value, where `0` is the highest priority.
  final int? priority;

  /// TCP routing information for the route.
  final RouteSpecTcpRoute? tcpRoute;

  RouteSpec({
    this.grpcRoute,
    this.http2Route,
    this.httpRoute,
    this.priority,
    this.tcpRoute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grpcRouteValue = grpcRoute;
    if (grpcRouteValue != null) {
      map['grpcRoute'] = grpcRouteValue.toMap();
    }
    final http2RouteValue = http2Route;
    if (http2RouteValue != null) {
      map['http2Route'] = http2RouteValue.toMap();
    }
    final httpRouteValue = httpRoute;
    if (httpRouteValue != null) {
      map['httpRoute'] = httpRouteValue.toMap();
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    final tcpRouteValue = tcpRoute;
    if (tcpRouteValue != null) {
      map['tcpRoute'] = tcpRouteValue.toMap();
    }
    return map;
  }

  factory RouteSpec.fromMap(Map<String, dynamic> map) {
    return RouteSpec(
      grpcRoute: map['grpcRoute'] == null
          ? null
          : RouteSpecGrpcRoute.fromMap(
              (map['grpcRoute'] as Map).cast<String, dynamic>()),
      http2Route: map['http2Route'] == null
          ? null
          : RouteSpecHttp2Route.fromMap(
              (map['http2Route'] as Map).cast<String, dynamic>()),
      httpRoute: map['httpRoute'] == null
          ? null
          : RouteSpecHttpRoute.fromMap(
              (map['httpRoute'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      tcpRoute: map['tcpRoute'] == null
          ? null
          : RouteSpecTcpRoute.fromMap(
              (map['tcpRoute'] as Map).cast<String, dynamic>()),
    );
  }
}
