// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'tls_route_route_action_response2.dart';
import 'tls_route_route_match_response2.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRuleResponse2 {
  /// The detailed rule defining how to route matched traffic.
  final TlsRouteRouteActionResponse2 action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final List<TlsRouteRouteMatchResponse2> matches;

  TlsRouteRouteRuleResponse2({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        Input.encodeList<TlsRouteRouteMatchResponse2, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteRuleResponse2.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRuleResponse2(
      action: TlsRouteRouteActionResponse2.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<TlsRouteRouteMatchResponse2>(
          map['matches'],
          (value) => TlsRouteRouteMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
