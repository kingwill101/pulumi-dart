// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_spec_http_route_action.dart';
import 'route_spec_http_route_match.dart';
import 'route_spec_http_route_retry_policy.dart';
import 'route_spec_http_route_timeout.dart';

class RouteSpecHttpRoute {
  /// Action to take if a match is determined.
  final pulumi.Input<RouteSpecHttpRouteAction> action;
  /// Criteria for determining an HTTP request match.
  final pulumi.Input<RouteSpecHttpRouteMatch> match;
  /// Retry policy.
  final pulumi.Input<RouteSpecHttpRouteRetryPolicy>? retryPolicy;
  /// Types of timeouts.
  final pulumi.Input<RouteSpecHttpRouteTimeout>? timeout;

  /// Creates a new [RouteSpecHttpRoute].
  /// [action] Action to take if a match is determined.
  /// [match] Criteria for determining an HTTP request match.
  /// [retryPolicy] Retry policy.
  /// [timeout] Types of timeouts.
  RouteSpecHttpRoute({
    required this.action,
    required this.match,
    this.retryPolicy,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<RouteSpecHttpRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': pulumi.Input.mapInputValue<RouteSpecHttpRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'retryPolicy': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteRetryPolicy, Map<String, dynamic>>(retryPolicy, (value) => value.toMap()),
      'timeout': ?pulumi.Input.mapOptionalInputValue<RouteSpecHttpRouteTimeout, Map<String, dynamic>>(timeout, (value) => value.toMap()),
    };
  }

  factory RouteSpecHttpRoute.fromMap(Map<String, dynamic> map) {
    return RouteSpecHttpRoute(
      action: (RouteSpecHttpRouteAction.fromMap((map['action']! as Map).cast<String, dynamic>())).input(),
      match: (RouteSpecHttpRouteMatch.fromMap((map['match']! as Map).cast<String, dynamic>())).input(),
      retryPolicy: map['retryPolicy'] == null ? null : ((RouteSpecHttpRouteRetryPolicy.fromMap((map['retryPolicy']! as Map).cast<String, dynamic>())).input()).input(),
      timeout: map['timeout'] == null ? null : ((RouteSpecHttpRouteTimeout.fromMap((map['timeout']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

