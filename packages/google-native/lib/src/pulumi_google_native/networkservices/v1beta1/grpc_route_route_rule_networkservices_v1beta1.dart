// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grpc_route_route_action_networkservices_v1beta1.dart';
import 'grpc_route_route_match_networkservices_v1beta1.dart';

/// Describes how to route traffic.
class GrpcRouteRouteRuleNetworkservicesV1beta1 {
  /// A detailed rule defining how to route traffic. This field is required.
  final GrpcRouteRouteActionNetworkservicesV1beta1 action;

  /// Optional. Matches define conditions used for matching the rule against incoming gRPC requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic.
  final List<GrpcRouteRouteMatchNetworkservicesV1beta1>? matches;

  GrpcRouteRouteRuleNetworkservicesV1beta1({
    required this.action,
    this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    final matchesValue = matches;
    if (matchesValue != null) {
      map['matches'] = pulumi.Input.encodeList<
          GrpcRouteRouteMatchNetworkservicesV1beta1,
          Map<String, dynamic>>(matchesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GrpcRouteRouteRuleNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return GrpcRouteRouteRuleNetworkservicesV1beta1(
      action: GrpcRouteRouteActionNetworkservicesV1beta1.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: map['matches'] == null
          ? null
          : pulumi.Input.decodeList<GrpcRouteRouteMatchNetworkservicesV1beta1>(
              map['matches'],
              (value) => GrpcRouteRouteMatchNetworkservicesV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
