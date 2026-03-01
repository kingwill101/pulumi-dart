// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_action.dart';
import 'http_route_match.dart';

/// Http Routes configuration, including paths to match on and whether or not rewrites are to be done.
class HttpRoute {
  /// Once route is matched, what is the desired action
  final HttpRouteAction? action;
  /// Conditions route will match on
  final HttpRouteMatch? match;

  /// Creates a new [HttpRoute].
  /// [action] Once route is matched, what is the desired action
  /// [match] Conditions route will match on
  HttpRoute({
    this.action,
    this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'match': ?match == null ? null : match!.toMap(),
    };
  }

  factory HttpRoute.fromMap(Map<String, dynamic> map) {
    return HttpRoute(
      action: map['action'] == null ? null : HttpRouteAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      match: map['match'] == null ? null : HttpRouteMatch.fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}

