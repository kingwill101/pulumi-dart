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
  const RouteSpec({
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
      grpcRoute: (() { final guardedValue = map['grpcRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecGrpcRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http2Route: (() { final guardedValue = map['http2Route']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2Route.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpRoute: (() { final guardedValue = map['httpRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tcpRoute: (() { final guardedValue = map['tcpRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecTcpRoute.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

