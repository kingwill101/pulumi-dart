// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'grpc_route_route_action_response2.dart';
import 'grpc_route_route_match_response2.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRuleResponse2 {
  /// A detailed rule defining how to route traffic. This field is required.
  final GrpcRouteRouteActionResponse2 action;

  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final List<GrpcRouteRouteMatchResponse2> matches;

  GrpcRouteRouteRuleResponse2({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        Input.encodeList<GrpcRouteRouteMatchResponse2, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory GrpcRouteRouteRuleResponse2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteRuleResponse2(
      action: GrpcRouteRouteActionResponse2.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<GrpcRouteRouteMatchResponse2>(
          map['matches'],
          (value) => GrpcRouteRouteMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
