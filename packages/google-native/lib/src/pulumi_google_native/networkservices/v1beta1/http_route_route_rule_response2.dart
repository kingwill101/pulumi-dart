// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'http_route_route_action_response2.dart';
import 'http_route_route_match_response2.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRuleResponse2 {
  /// The detailed rule defining how to route matched traffic.
  final HttpRouteRouteActionResponse2 action;

  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final List<HttpRouteRouteMatchResponse2> matches;

  HttpRouteRouteRuleResponse2({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        Input.encodeList<HttpRouteRouteMatchResponse2, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory HttpRouteRouteRuleResponse2.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteRuleResponse2(
      action: HttpRouteRouteActionResponse2.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<HttpRouteRouteMatchResponse2>(
          map['matches'],
          (value) => HttpRouteRouteMatchResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
