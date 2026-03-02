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
      'grpcRoute': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecGrpcRoute, Map<String, dynamic>>(grpcRoute, (value) => value.toMap()),
      'http2Route': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttp2Route, Map<String, dynamic>>(http2Route, (value) => value.toMap()),
      'httpRoute': ?pulumi.Input.mapOptionalInputValue<GatewayRouteSpecHttpRoute, Map<String, dynamic>>(httpRoute, (value) => value.toMap()),
      'priority': ?priority,
    };
  }

  factory GatewayRouteSpec.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpec(
      grpcRoute: map['grpcRoute'] == null ? null : ((GatewayRouteSpecGrpcRoute.fromMap((map['grpcRoute']! as Map).cast<String, dynamic>())).input()).input(),
      http2Route: map['http2Route'] == null ? null : ((GatewayRouteSpecHttp2Route.fromMap((map['http2Route']! as Map).cast<String, dynamic>())).input()).input(),
      httpRoute: map['httpRoute'] == null ? null : ((GatewayRouteSpecHttpRoute.fromMap((map['httpRoute']! as Map).cast<String, dynamic>())).input()).input(),
      priority: map['priority'] == null ? null : ((map['priority'] as int).input()).input(),
    );
  }
}

