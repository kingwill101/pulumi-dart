// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_rule_action.dart';
import 'tcp_route_rule_match.dart';

class TcpRouteRule {
  /// A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final TcpRouteRuleAction action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  /// If no routeMatch field is specified, this rule will unconditionally match traffic.
  /// Structure is documented below.
  final List<TcpRouteRuleMatch>? matches;

  /// Creates a new [TcpRouteRule].
  /// [action] A detailed rule defining how to route traffic.
  /// [matches] RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  TcpRouteRule({required this.action, this.matches});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'matches': ?matches == null
          ? null
          : pulumi.Input.encodeList<TcpRouteRuleMatch, Map<String, dynamic>>(
              matches!,
              (value) => value.toMap(),
            ),
    };
  }

  factory TcpRouteRule.fromMap(Map<String, dynamic> map) {
    return TcpRouteRule(
      action: TcpRouteRuleAction.fromMap(
        (map['action'] as Map).cast<String, dynamic>(),
      ),
      matches: map['matches'] == null
          ? null
          : pulumi.Input.decodeList<TcpRouteRuleMatch>(
              map['matches'],
              (value) => TcpRouteRuleMatch.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
