// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_route_spec_grpc_route.dart';
import 'gateway_route_spec_http2_route.dart';
import 'gateway_route_spec_http_route.dart';

class GatewayRouteSpec {
  /// Specification of a gRPC gateway route.
  final GatewayRouteSpecGrpcRoute? grpcRoute;

  /// Specification of an HTTP/2 gateway route.
  final GatewayRouteSpecHttp2Route? http2Route;

  /// Specification of an HTTP gateway route.
  final GatewayRouteSpecHttpRoute? httpRoute;

  /// Priority for the gateway route, between `0` and `1000`.
  final int? priority;

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
      'grpcRoute': ?grpcRoute == null ? null : grpcRoute!.toMap(),
      'http2Route': ?http2Route == null ? null : http2Route!.toMap(),
      'httpRoute': ?httpRoute == null ? null : httpRoute!.toMap(),
      'priority': ?priority,
    };
  }

  factory GatewayRouteSpec.fromMap(Map<String, dynamic> map) {
    return GatewayRouteSpec(
      grpcRoute: map['grpcRoute'] == null
          ? null
          : GatewayRouteSpecGrpcRoute.fromMap(
              (map['grpcRoute'] as Map).cast<String, dynamic>(),
            ),
      http2Route: map['http2Route'] == null
          ? null
          : GatewayRouteSpecHttp2Route.fromMap(
              (map['http2Route'] as Map).cast<String, dynamic>(),
            ),
      httpRoute: map['httpRoute'] == null
          ? null
          : GatewayRouteSpecHttpRoute.fromMap(
              (map['httpRoute'] as Map).cast<String, dynamic>(),
            ),
      priority: map['priority'] == null ? null : map['priority'] as int,
    );
  }
}
