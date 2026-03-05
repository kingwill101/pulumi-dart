// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_action_response.dart';
import 'http_route_match_response.dart';

/// Http Routes configuration, including paths to match on and whether or not rewrites are to be done.
class HttpRouteResponse {
  /// Once route is matched, what is the desired action
  final pulumi.Input<HttpRouteActionResponse>? action;
  /// Conditions route will match on
  final pulumi.Input<HttpRouteMatchResponse>? match;

  /// Creates a new [HttpRouteResponse].
  /// [action] Once route is matched, what is the desired action
  /// [match] Conditions route will match on
  HttpRouteResponse({
    this.action,
    this.match,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<HttpRouteActionResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'match': ?pulumi.Input.mapOptionalInputValue<HttpRouteMatchResponse, Map<String, dynamic>>(match, (value) => value.toMap()),
    };
  }

  factory HttpRouteResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteResponse(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteActionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HttpRouteMatchResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

