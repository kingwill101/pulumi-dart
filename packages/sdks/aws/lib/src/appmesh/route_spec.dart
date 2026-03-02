// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route.dart';
import 'route_spec_http2_route.dart';
import 'route_spec_http_route.dart';
import 'route_spec_tcp_route.dart';

class RouteSpec {
  /// GRPC routing information for the route.
  final pulumi.Input<RouteSpecGrpcRoute>? grpcRoute;
  /// HTTP/2 routing information for the route.
  final pulumi.Input<RouteSpecHttp2Route>? http2Route;
  /// HTTP routing information for the route.
  final pulumi.Input<RouteSpecHttpRoute>? httpRoute;
  /// Priority for the route, between `0` and `1000`.
  /// Routes are matched based on the specified value, where `0` is the highest priority.
  final pulumi.Input<int>? priority;
  /// TCP routing information for the route.
  final pulumi.Input<RouteSpecTcpRoute>? tcpRoute;

  /// Creates a new [RouteSpec].
  /// [grpcRoute] GRPC routing information for the route.
  /// [http2Route] HTTP/2 routing information for the route.
  /// [httpRoute] HTTP routing information for the route.
  /// [priority] Priority for the route, between `0` and `1000`.
  /// [tcpRoute] TCP routing information for the route.
  RouteSpec({
    this.grpcRoute,
    this.http2Route,
    this.httpRoute,
    this.priority,
    this.tcpRoute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRoute': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRoute, Map<String, dynamic>>(grpcRoute, (value) => value.toMap()),
      'http2Route': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2Route, Map<String, dynamic>>(http2Route, (value) => value.toMap()),
      'httpRoute': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRoute, Map<String, dynamic>>(httpRoute, (value) => value.toMap()),
      'priority': ?priority,
      'tcpRoute': ?pulumi.Input.mapOptionalInputValue<RouteSpecTcpRoute, Map<String, dynamic>>(tcpRoute, (value) => value.toMap()),
    };
  }

  factory RouteSpec.fromMap(Map<String, dynamic> map) {
    return RouteSpec(
      grpcRoute: map['grpcRoute'] == null ? null : (RouteSpecGrpcRoute.fromMap((map['grpcRoute'] as Map).cast<String, dynamic>())).input(),
      http2Route: map['http2Route'] == null ? null : (RouteSpecHttp2Route.fromMap((map['http2Route'] as Map).cast<String, dynamic>())).input(),
      httpRoute: map['httpRoute'] == null ? null : (RouteSpecHttpRoute.fromMap((map['httpRoute'] as Map).cast<String, dynamic>())).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      tcpRoute: map['tcpRoute'] == null ? null : (RouteSpecTcpRoute.fromMap((map['tcpRoute'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

