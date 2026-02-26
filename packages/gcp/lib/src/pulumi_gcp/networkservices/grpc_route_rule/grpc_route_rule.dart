// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../grpc_route_rule_action/grpc_route_rule_action.dart';
import '../grpc_route_rule_match/grpc_route_rule_match.dart';

class GrpcRouteRule {
  /// Required. A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final GrpcRouteRuleAction? action;

  /// Matches define conditions used for matching the rule against incoming gRPC requests.
  /// Structure is documented below.
  final List<GrpcRouteRuleMatch>? matches;

  GrpcRouteRule({
    this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final actionValue = action;
    if (actionValue != null) {
      map['action'] = actionValue.toMap();
    }
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] =
          Input.encodeList<GrpcRouteRuleMatch, Map<String, dynamic>>(
              matchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GrpcRouteRule.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRule(
      action: map['action'] == null
          ? null
          : GrpcRouteRuleAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null
          ? null
          : Input.decodeList<GrpcRouteRuleMatch>(
              map['matches'],
              (value) => GrpcRouteRuleMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
