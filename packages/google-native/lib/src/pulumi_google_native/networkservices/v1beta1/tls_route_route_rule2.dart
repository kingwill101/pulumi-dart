// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'tls_route_route_action2.dart';
import 'tls_route_route_match2.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRule2 {
  /// The detailed rule defining how to route matched traffic.
  final TlsRouteRouteAction2 action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final List<TlsRouteRouteMatch2> matches;

  TlsRouteRouteRule2({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        Input.encodeList<TlsRouteRouteMatch2, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteRule2.fromMap(Map<String, dynamic> map) {
    return TlsRouteRouteRule2(
      action: TlsRouteRouteAction2.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<TlsRouteRouteMatch2>(
          map['matches'],
          (value) => TlsRouteRouteMatch2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
