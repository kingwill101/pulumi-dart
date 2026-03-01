// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_grpc_route_timeout_idle.dart';
import 'route_spec_grpc_route_timeout_per_request.dart';

class RouteSpecGrpcRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final RouteSpecGrpcRouteTimeoutIdle? idle;
  /// Per request timeout.
  final RouteSpecGrpcRouteTimeoutPerRequest? perRequest;

  /// Creates a new [RouteSpecGrpcRouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  RouteSpecGrpcRouteTimeout({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?idle == null ? null : idle!.toMap(),
      'perRequest': ?perRequest == null ? null : perRequest!.toMap(),
    };
  }

  factory RouteSpecGrpcRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteTimeout(
      idle: map['idle'] == null ? null : RouteSpecGrpcRouteTimeoutIdle.fromMap((map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null ? null : RouteSpecGrpcRouteTimeoutPerRequest.fromMap((map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}

