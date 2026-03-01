// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_rule_action.dart';
import 'http_route_rule_match.dart';

class HttpRouteRule {
  /// The detailed rule defining how to route matched traffic.
  /// Structure is documented below.
  final HttpRouteRuleAction? action;

  /// A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied.
  /// If no matches field is specified, this rule will unconditionally match traffic.
  /// If a default rule is desired to be configured, add a rule with no matches specified to the end of the rules list.
  /// Structure is documented below.
  final List<HttpRouteRuleMatch>? matches;

  /// Creates a new [HttpRouteRule].
  /// [action] The detailed rule defining how to route matched traffic.
  /// [matches] A list of matches define conditions used for matching the rule against incoming HTTP requests. Each match is independent, i.e. this rule will be matched if ANY one of the matches is satisfied.
  HttpRouteRule({this.action, this.matches});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action == null ? null : action!.toMap(),
      'matches': ?matches == null
          ? null
          : pulumi.Input.encodeList<HttpRouteRuleMatch, Map<String, dynamic>>(
              matches!,
              (value) => value.toMap(),
            ),
    };
  }

  factory HttpRouteRule.fromMap(Map<String, dynamic> map) {
    return HttpRouteRule(
      action: map['action'] == null
          ? null
          : HttpRouteRuleAction.fromMap(
              (map['action'] as Map).cast<String, dynamic>(),
            ),
      matches: map['matches'] == null
          ? null
          : pulumi.Input.decodeList<HttpRouteRuleMatch>(
              map['matches'],
              (value) => HttpRouteRuleMatch.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
