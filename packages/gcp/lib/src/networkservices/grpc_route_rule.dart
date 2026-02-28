// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_rule_action.dart';
import 'grpc_route_rule_match.dart';

class GrpcRouteRule {
  /// Required. A detailed rule defining how to route traffic.
  /// Structure is documented below.
  final GrpcRouteRuleAction? action;
  /// Matches define conditions used for matching the rule against incoming gRPC requests.
  /// Structure is documented below.
  final List<GrpcRouteRuleMatch>? matches;

  /// Creates a new [GrpcRouteRule].
  /// [action] Required. A detailed rule defining how to route traffic.
  /// [matches] Matches define conditions used for matching the rule against incoming gRPC requests.
  GrpcRouteRule({
    this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'matches': ?matches == null ? null : pulumi.Input.encodeList<GrpcRouteRuleMatch, Map<String, dynamic>>(matches!, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRule.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRule(
      action: map['action'] == null ? null : GrpcRouteRuleAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null ? null : pulumi.Input.decodeList<GrpcRouteRuleMatch>(map['matches'], (value) => GrpcRouteRuleMatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

