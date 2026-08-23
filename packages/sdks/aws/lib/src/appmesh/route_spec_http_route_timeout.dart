// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_timeout_idle.dart';
import 'route_spec_http_route_timeout_per_request.dart';

class RouteSpecHttpRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.tcp_route.timeout.idle` Block for details.
  final pulumi.Input<RouteSpecHttpRouteTimeoutIdle>? idle;
  /// Per request timeout. See `spec.http_route.timeout.per_request` Block for details.
  final pulumi.Input<RouteSpecHttpRouteTimeoutPerRequest>? perRequest;

  /// Creates a new [RouteSpecHttpRouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.tcp_route.timeout.idle` Block for details.
  /// [perRequest] Per request timeout. See `spec.http_route.timeout.per_request` Block for details.
  const RouteSpecHttpRouteTimeout({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteTimeoutIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteTimeoutPerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory RouteSpecHttpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRouteTimeout(
      idle: (() { final guardedValue = map['idle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteTimeoutIdle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perRequest: (() { final guardedValue = map['perRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteSpecHttpRouteTimeoutPerRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
