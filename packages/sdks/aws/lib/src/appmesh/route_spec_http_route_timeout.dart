// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_timeout_idle.dart';
import 'route_spec_http_route_timeout_per_request.dart';

class RouteSpecHttpRouteTimeout {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<RouteSpecHttpRouteTimeoutIdle>? idle;
  /// Per request timeout.
  final pulumi.Input<RouteSpecHttpRouteTimeoutPerRequest>? perRequest;

  /// Creates a new [RouteSpecHttpRouteTimeout].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  RouteSpecHttpRouteTimeout({
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
      idle: map['idle'] == null ? null : ((RouteSpecHttpRouteTimeoutIdle.fromMap((map['idle']! as Map).cast<String, dynamic>())).input()).input(),
      perRequest: map['perRequest'] == null ? null : ((RouteSpecHttpRouteTimeoutPerRequest.fromMap((map['perRequest']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

