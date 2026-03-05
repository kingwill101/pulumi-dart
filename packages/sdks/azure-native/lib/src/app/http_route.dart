// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_action.dart';
import 'http_route_match.dart';

/// Http Routes configuration, including paths to match on and whether or not rewrites are to be done.
class HttpRoute {
  /// Once route is matched, what is the desired action
  final pulumi.Input<HttpRouteAction>? action;
  /// Conditions route will match on
  final pulumi.Input<HttpRouteMatch>? match;

  /// Creates a new [HttpRoute].
  /// [action] Once route is matched, what is the desired action
  /// [match] Conditions route will match on
  HttpRoute({
    this.action,
    this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<HttpRouteAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<HttpRouteMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory HttpRoute.fromMap(Map<String, dynamic> map) {
    return HttpRoute(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

