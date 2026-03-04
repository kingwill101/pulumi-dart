// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_tcp_route_timeout_idle.dart';

class RouteSpecTcpRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<RouteSpecTcpRouteTimeoutIdle>? idle;

  /// Creates a new [RouteSpecTcpRouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  RouteSpecTcpRouteTimeout({this.idle});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle':
          ?pulumi.Input.mapOptionalInputValue<
            RouteSpecTcpRouteTimeoutIdle,
            Map<String, dynamic>
          >(idle, (value) => value.toMap()),
    };
  }

  factory RouteSpecTcpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteTimeout(
      idle: (() {
        final guardedValue = map['idle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouteSpecTcpRouteTimeoutIdle.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
