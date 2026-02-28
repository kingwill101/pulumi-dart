// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_route_action_response_networkservices_v1beta1.dart';
import 'http_route_route_match_response_networkservices_v1beta1.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRuleResponseNetworkservicesV1beta1 {
  /// The detailed rule defining how to route matched traffic.
  final HttpRouteRouteActionResponseNetworkservicesV1beta1 action;

  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final List<HttpRouteRouteMatchResponseNetworkservicesV1beta1> matches;

  /// Creates a new [HttpRouteRouteRuleResponseNetworkservicesV1beta1].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  HttpRouteRouteRuleResponseNetworkservicesV1beta1({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] = pulumi.Input.encodeList<
        HttpRouteRouteMatchResponseNetworkservicesV1beta1,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory HttpRouteRouteRuleResponseNetworkservicesV1beta1.fromMap(
      Map<String, dynamic> map) {
    return HttpRouteRouteRuleResponseNetworkservicesV1beta1(
      action: HttpRouteRouteActionResponseNetworkservicesV1beta1.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: pulumi.Input.decodeList<
              HttpRouteRouteMatchResponseNetworkservicesV1beta1>(
          map['matches'],
          (value) => HttpRouteRouteMatchResponseNetworkservicesV1beta1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
