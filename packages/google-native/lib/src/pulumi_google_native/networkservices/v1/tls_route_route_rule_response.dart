// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action_response.dart';
import 'tls_route_route_match_response.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRuleResponse {
  /// The detailed rule defining how to route matched traffic.
  final TlsRouteRouteActionResponse action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final List<TlsRouteRouteMatchResponse> matches;

  TlsRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] = pulumi.Input.encodeList<TlsRouteRouteMatchResponse,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRuleResponse(
      action: TlsRouteRouteActionResponse.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: pulumi.Input.decodeList<TlsRouteRouteMatchResponse>(
          map['matches'],
          (value) => TlsRouteRouteMatchResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
