// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http_route_timeout_idle/route_spec_http_route_timeout_idle.dart';
import '../route_spec_http_route_timeout_per_request/route_spec_http_route_timeout_per_request.dart';

class RouteSpecHttpRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final RouteSpecHttpRouteTimeoutIdle? idle;

  /// Per request timeout.
  final RouteSpecHttpRouteTimeoutPerRequest? perRequest;

  RouteSpecHttpRouteTimeout({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleValue = idle;
    if (idleValue != null) {
      map['idle'] = idleValue.toMap();
    }
    final perRequestValue = perRequest;
    if (perRequestValue != null) {
      map['perRequest'] = perRequestValue.toMap();
    }
    return map;
  }

  factory RouteSpecHttpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteTimeout(
      idle: map['idle'] == null
          ? null
          : RouteSpecHttpRouteTimeoutIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null
          ? null
          : RouteSpecHttpRouteTimeoutPerRequest.fromMap(
              (map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
