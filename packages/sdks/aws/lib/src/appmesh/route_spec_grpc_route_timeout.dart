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
  RouteSpecGrpcRouteTimeout({this.idle, this.perRequest});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle':
          ?pulumi.Input.mapOptionalInputValue<
            RouteSpecGrpcRouteTimeoutIdle,
            Map<String, dynamic>
          >(idle, (value) => value.toMap()),
      'perRequest':
          ?pulumi.Input.mapOptionalInputValue<
            RouteSpecGrpcRouteTimeoutPerRequest,
            Map<String, dynamic>
          >(perRequest, (value) => value.toMap()),
    };
  }

  factory RouteSpecGrpcRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecGrpcRouteTimeout(
      idle: (() {
        final guardedValue = map['idle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouteSpecGrpcRouteTimeoutIdle.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      perRequest: (() {
        final guardedValue = map['perRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouteSpecGrpcRouteTimeoutPerRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
