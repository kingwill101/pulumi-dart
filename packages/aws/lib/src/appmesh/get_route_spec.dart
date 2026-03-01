// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_grpc_route.dart';
import 'get_route_spec_http2_route.dart';
import 'get_route_spec_http_route.dart';
import 'get_route_spec_tcp_route.dart';

class GetRouteSpec {
  final List<GetRouteSpecGrpcRoute> grpcRoutes;
  final List<GetRouteSpecHttp2Route> http2Routes;
  final List<GetRouteSpecHttpRoute> httpRoutes;
  final int priority;
  final List<GetRouteSpecTcpRoute> tcpRoutes;

  /// Creates a new [GetRouteSpec].
  /// [grpcRoutes] Required.
  /// [http2Routes] Required.
  /// [httpRoutes] Required.
  /// [priority] Required.
  /// [tcpRoutes] Required.
  GetRouteSpec({
    required this.grpcRoutes,
    required this.http2Routes,
    required this.httpRoutes,
    required this.priority,
    required this.tcpRoutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcRoutes':
          pulumi.Input.encodeList<GetRouteSpecGrpcRoute, Map<String, dynamic>>(
            grpcRoutes,
            (value) => value.toMap(),
          ),
      'http2Routes':
          pulumi.Input.encodeList<GetRouteSpecHttp2Route, Map<String, dynamic>>(
            http2Routes,
            (value) => value.toMap(),
          ),
      'httpRoutes':
          pulumi.Input.encodeList<GetRouteSpecHttpRoute, Map<String, dynamic>>(
            httpRoutes,
            (value) => value.toMap(),
          ),
      'priority': priority,
      'tcpRoutes':
          pulumi.Input.encodeList<GetRouteSpecTcpRoute, Map<String, dynamic>>(
            tcpRoutes,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetRouteSpec.fromMap(Map<String, dynamic> map) {
    return GetRouteSpec(
      grpcRoutes: pulumi.Input.decodeList<GetRouteSpecGrpcRoute>(
        map['grpcRoutes'],
        (value) => GetRouteSpecGrpcRoute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      http2Routes: pulumi.Input.decodeList<GetRouteSpecHttp2Route>(
        map['http2Routes'],
        (value) => GetRouteSpecHttp2Route.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      httpRoutes: pulumi.Input.decodeList<GetRouteSpecHttpRoute>(
        map['httpRoutes'],
        (value) => GetRouteSpecHttpRoute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      priority: map['priority'] as int,
      tcpRoutes: pulumi.Input.decodeList<GetRouteSpecTcpRoute>(
        map['tcpRoutes'],
        (value) => GetRouteSpecTcpRoute.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
