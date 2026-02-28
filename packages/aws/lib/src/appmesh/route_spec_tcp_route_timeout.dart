// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_tcp_route_timeout_idle.dart';

class RouteSpecTcpRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final RouteSpecTcpRouteTimeoutIdle? idle;

  /// Creates a new [RouteSpecTcpRouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  RouteSpecTcpRouteTimeout({
    this.idle,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleValue = idle;
    if (idleValue != null) {
      map['idle'] = idleValue.toMap();
    }
    return map;
  }

  factory RouteSpecTcpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecTcpRouteTimeout(
      idle: map['idle'] == null
          ? null
          : RouteSpecTcpRouteTimeoutIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
    );
  }
}
