// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action.dart';
import 'tls_route_route_match.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRule {
  /// The detailed rule defining how to route matched traffic.
  final TlsRouteRouteAction action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final List<TlsRouteRouteMatch> matches;

  TlsRouteRouteRule({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        pulumi.Input.encodeList<TlsRouteRouteMatch, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteRule.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRule(
      action: TlsRouteRouteAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: pulumi.Input.decodeList<TlsRouteRouteMatch>(
          map['matches'],
          (value) => TlsRouteRouteMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
