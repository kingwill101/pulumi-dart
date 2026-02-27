// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'http_route_route_action_response.dart';
import 'http_route_route_match_response.dart';

/// Specifies how to match traffic and how to route traffic when traffic is matched.
class HttpRouteRouteRuleResponse {
  /// The detailed rule defining how to route matched traffic.
  final HttpRouteRouteActionResponse action;

  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied. If no matches field is specified, this rule will unconditionally match traffic. If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  final List<HttpRouteRouteMatchResponse> matches;

  HttpRouteRouteRuleResponse({
    required this.action,
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action.toMap();
    map['matches'] =
        Input.encodeList<HttpRouteRouteMatchResponse, Map<String, dynamic>>(
            matches, (value) => value.toMap());
    return map;
  }

  factory HttpRouteRouteRuleResponse.fromMap(Map<String, dynamic> map) {
    return HttpRouteRouteRuleResponse(
      action: HttpRouteRouteActionResponse.fromMap(
          (map['action'] as Map).cast<String, dynamic>()),
      matches: Input.decodeList<HttpRouteRouteMatchResponse>(
          map['matches'],
          (value) => HttpRouteRouteMatchResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
