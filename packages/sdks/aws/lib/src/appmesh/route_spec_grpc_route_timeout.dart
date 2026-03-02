// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_grpc_route_timeout_idle.dart';
import 'route_spec_grpc_route_timeout_per_request.dart';

class RouteSpecGrpcRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<RouteSpecGrpcRouteTimeoutIdle>? idle;
  /// Per request timeout.
  final pulumi.Input<RouteSpecGrpcRouteTimeoutPerRequest>? perRequest;

  /// Creates a new [RouteSpecGrpcRouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  RouteSpecGrpcRouteTimeout({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRouteTimeoutIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<RouteSpecGrpcRouteTimeoutPerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory RouteSpecGrpcRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteTimeout(
      idle: map['idle'] == null ? null : ((RouteSpecGrpcRouteTimeoutIdle.fromMap((map['idle']! as Map).cast<String, dynamic>())).input()).input(),
      perRequest: map['perRequest'] == null ? null : ((RouteSpecGrpcRouteTimeoutPerRequest.fromMap((map['perRequest']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

