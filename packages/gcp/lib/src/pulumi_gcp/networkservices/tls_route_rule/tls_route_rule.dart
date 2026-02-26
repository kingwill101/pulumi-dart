// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../tls_route_rule_action/tls_route_rule_action.dart';
import '../tls_route_rule_match/tls_route_rule_match.dart';

class TlsRouteRule {
  /// Required. A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final TlsRouteRuleAction action;

  /// Matches define the predicate used to match requests to a given action.
  /// Structure is documented below.
  final List<TlsRouteRuleMatch> matches;

  TlsRouteRule({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] = Input.encodeList<TlsRouteRuleMatch, Map<String, dynamic>>(
        matches, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRule.fromMap(Map<String, dynamic> map) {
    return TlsRouteRule(
      action: TlsRouteRuleAction.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<TlsRouteRuleMatch>(
          map['matches'],
          (value) => TlsRouteRuleMatch.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
