// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'grpc_route_route_action2.dart';
import 'grpc_route_route_match2.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRule2 {
  /// A detailed rule defining how to route traffic. This field is required.
  final GrpcRouteRouteAction2 action;

  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final List<GrpcRouteRouteMatch2>? matches;

  GrpcRouteRouteRule2({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] =
          Input.encodeList<GrpcRouteRouteMatch2, Map<String, dynamic>>(
              matchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GrpcRouteRouteRule2.fromMap(Map<String, dynamic> map) {
    return GrpcRouteRouteRule2(
      action: GrpcRouteRouteAction2.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null
          ? null
          : Input.decodeList<GrpcRouteRouteMatch2>(
              map['matches'],
              (value) => GrpcRouteRouteMatch2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
