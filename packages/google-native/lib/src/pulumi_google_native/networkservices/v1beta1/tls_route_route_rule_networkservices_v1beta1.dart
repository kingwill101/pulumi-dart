// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_route_route_action_networkservices_v1beta1.dart';
import 'tls_route_route_match_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class TlsRouteRouteRuleNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final TlsRouteRouteActionNetworkservicesV1beta1 action;

  /// RouteMatch defines the predicate used to match requests to a given action. Multiple match types are "OR"ed for evaluation.
  final List<TlsRouteRouteMatchNetworkservicesV1beta1> matches;

  TlsRouteRouteRuleNetworkservicesV1beta1({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] = pulumi.Input.encodeList<
        TlsRouteRouteMatchNetworkservicesV1beta1,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory TlsRouteRouteRuleNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return TlsRouteRouteRuleNetworkservicesV1beta1(
      action: TlsRouteRouteActionNetworkservicesV1beta1.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches:
          pulumi.Input.decodeList<TlsRouteRouteMatchNetworkservicesV1beta1>(
              map['matches'],
              (value) => TlsRouteRouteMatchNetworkservicesV1beta1.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
