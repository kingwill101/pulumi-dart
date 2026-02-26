// ignore_for_file: unused_element, unnecessary_cast

import '../route_spec_http2_route_timeout_idle/route_spec_http2_route_timeout_idle.dart';
import '../route_spec_http2_route_timeout_per_request/route_spec_http2_route_timeout_per_request.dart';

class RouteSpecHttp2RouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final RouteSpecHttp2RouteTimeoutIdle? idle;

  /// Per request timeout.
  final RouteSpecHttp2RouteTimeoutPerRequest? perRequest;

  RouteSpecHttp2RouteTimeout({
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

  factory RouteSpecHttp2RouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteTimeout(
      idle: map['idle'] == null
          ? null
          : RouteSpecHttp2RouteTimeoutIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null
          ? null
          : RouteSpecHttp2RouteTimeoutPerRequest.fromMap(
              (map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
