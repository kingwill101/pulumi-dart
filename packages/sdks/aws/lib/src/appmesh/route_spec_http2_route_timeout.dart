// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http2_route_timeout_idle.dart';
import 'route_spec_http2_route_timeout_per_request.dart';

class RouteSpecHttp2RouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<RouteSpecHttp2RouteTimeoutIdle>? idle;
  /// Per request timeout.
  final pulumi.Input<RouteSpecHttp2RouteTimeoutPerRequest>? perRequest;

  /// Creates a new [RouteSpecHttp2RouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  RouteSpecHttp2RouteTimeout({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteTimeoutIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttp2RouteTimeoutPerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory RouteSpecHttp2RouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttp2RouteTimeout(
      idle: (() { final guardedValue = map['idle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteTimeoutIdle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perRequest: (() { final guardedValue = map['perRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttp2RouteTimeoutPerRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

