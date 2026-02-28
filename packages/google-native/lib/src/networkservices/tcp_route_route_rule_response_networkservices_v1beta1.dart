// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tcp_route_route_action_response_networkservices_v1beta1.dart';
import 'tcp_route_route_match_response_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TcpRouteRouteRuleResponseNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final TcpRouteRouteActionResponseNetworkservicesV1beta1 action;

  /// Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  final List<TcpRouteRouteMatchResponseNetworkservicesV1beta1> matches;

  /// Creates a new [TcpRouteRouteRuleResponseNetworkservicesV1beta1].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] Optional. RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation. If no routeMatch field is specified, this rule will unconditionally match traffic.
  TcpRouteRouteRuleResponseNetworkservicesV1beta1({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] = pulumi.Input.encodeList<
        TcpRouteRouteMatchResponseNetworkservicesV1beta1,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory TcpRouteRouteRuleResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TcpRouteRouteRuleResponseNetworkservicesV1beta1(
      action: TcpRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: pulumi.Input.decodeList<
              TcpRouteRouteMatchResponseNetworkservicesV1beta1>(
          map['matches'],
          (value) => TcpRouteRouteMatchResponseNetworkservicesV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
