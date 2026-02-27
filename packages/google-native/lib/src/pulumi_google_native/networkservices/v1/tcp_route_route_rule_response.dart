// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tcp_route_route_action_response.dart';
import 'tcp_route_route_match_response.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRuleResponse {
  /// The detailed rule defining how to route matched traffic.
  final TcpRouteRouteActionResponse action;

  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final List<TcpRouteRouteMatchResponse> matches;

  TcpRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        Input.encodeList<TcpRouteRouteMatchResponse, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory TcpRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return TcpRouteRouteRuleResponse(
      action: TcpRouteRouteActionResponse.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<TcpRouteRouteMatchResponse>(
          map['matches'],
          (value) => TcpRouteRouteMatchResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
