// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_route_spec_grpc_route.dart';
import 'gateway_route_spec_http2_route.dart';
import 'gateway_route_spec_http_route.dart';

class GatewayRouteSpec {
  /// Specification of a gRPC gateway route.
  final pulumi.Input<GatewayRouteSpecGrpcRoute>? grpcRoute;

  /// Specification of an HTTP/2 gateway route.
  final pulumi.Input<GatewayRouteSpecHttp2Route>? http2Route;

  /// Specification of an HTTP gateway route.
  final pulumi.Input<GatewayRouteSpecHttpRoute>? httpRoute;

  /// Priority for the gateway route, between `0` and `1000`.
  final pulumi.Input<int>? priority;

  /// Creates a new [GatewayRouteSpec].
  /// [grpcRoute] Specification of a gRPC gateway route.
  /// [http2Route] Specification of an HTTP/2 gateway route.
  /// [httpRoute] Specification of an HTTP gateway route.
  /// [priority] Priority for the gateway route, between `0` and `1000`.
  GatewayRouteSpec({
    this.grpcRoute,
    this.http2Route,
    this.httpRoute,
    this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRoute':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayRouteSpecGrpcRoute,
            Map<String, dynamic>
          >(grpcRoute, (value) => value.toMap()),
      'http2Route':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayRouteSpecHttp2Route,
            Map<String, dynamic>
          >(http2Route, (value) => value.toMap()),
      'httpRoute':
          ?pulumi.Input.mapOptionalInputValue<
            GatewayRouteSpecHttpRoute,
            Map<String, dynamic>
          >(httpRoute, (value) => value.toMap()),
      'priority': ?priority,
    };
  }

  factory GatewayRouteSpec.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpec(
      grpcRoute: (() {
        final guardedValue = map['grpcRoute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayRouteSpecGrpcRoute.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      http2Route: (() {
        final guardedValue = map['http2Route'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayRouteSpecHttp2Route.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpRoute: (() {
        final guardedValue = map['httpRoute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GatewayRouteSpecHttpRoute.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
