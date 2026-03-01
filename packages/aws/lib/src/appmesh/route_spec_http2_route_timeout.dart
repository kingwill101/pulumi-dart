// ignore_for_file: unused_element, unnecessary_cast

import 'route_spec_http2_route_timeout_idle.dart';
import 'route_spec_http2_route_timeout_per_request.dart';

class RouteSpecHttp2RouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final RouteSpecHttp2RouteTimeoutIdle? idle;

  /// Per request timeout.
  final RouteSpecHttp2RouteTimeoutPerRequest? perRequest;

  /// Creates a new [RouteSpecHttp2RouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  RouteSpecHttp2RouteTimeout({this.idle, this.perRequest});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?idle == null ? null : idle!.toMap(),
      'perRequest': ?perRequest == null ? null : perRequest!.toMap(),
    };
  }

  factory RouteSpecHttp2RouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteTimeout(
      idle: map['idle'] == null
          ? null
          : RouteSpecHttp2RouteTimeoutIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>(),
            ),
      perRequest: map['perRequest'] == null
          ? null
          : RouteSpecHttp2RouteTimeoutPerRequest.fromMap(
              (map['perRequest'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
