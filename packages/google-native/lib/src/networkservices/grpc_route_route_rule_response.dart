// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_action_response.dart';
import 'grpc_route_route_match_response.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRuleResponse {
  /// A detailed rule defining how to route traffic. This field is required.
  final GrpcRouteRouteActionResponse action;
  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final List<GrpcRouteRouteMatchResponse> matches;

  /// Creates a new [GrpcRouteRouteRuleResponse].
  /// [action] A detailed rule defining how to route traffic. This field is required.
  /// [matches] Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  GrpcRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'matches': pulumi.Input.encodeList<GrpcRouteRouteMatchResponse, Map<String, dynamic>>(matches, (value) => value.toMap()),
    };
  }

  factory GrpcRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteRuleResponse(
      action: GrpcRouteRouteActionResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      matches: pulumi.Input.decodeList<GrpcRouteRouteMatchResponse>(map['matches'], (value) => GrpcRouteRouteMatchResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

