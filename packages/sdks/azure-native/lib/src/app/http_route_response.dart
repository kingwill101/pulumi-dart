// ignore_for_file: unused_element, unnecessary_cast

import 'http_route_action_response.dart';
import 'http_route_match_response.dart';

/// Http Routes configuration, including paths to match on and whether or not rewrites are to be done.
class HttpRouteResponse {
  /// Once route is matched, what is the desired action
  final HttpRouteActionResponse? action;
  /// Conditions route will match on
  final HttpRouteMatchResponse? match;

  /// Creates a new [HttpRouteResponse].
  /// [action] Once route is matched, what is the desired action
  /// [match] Conditions route will match on
  HttpRouteResponse({
    this.action,
    this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'match': ?match == null ? null : match!.toMap(),
    };
  }

  factory HttpRouteResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteResponse(
      action: map['action'] == null ? null : HttpRouteActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      match: map['match'] == null ? null : HttpRouteMatchResponse.fromMap((map['match'] as Map).cast<String, dynamic>()),
    );
  }
}

