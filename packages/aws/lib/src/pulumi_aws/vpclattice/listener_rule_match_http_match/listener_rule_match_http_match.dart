// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_match_http_match_header_match/listener_rule_match_http_match_header_match.dart';
import '../listener_rule_match_http_match_path_match/listener_rule_match_http_match_path_match.dart';

class ListenerRuleMatchHttpMatch {
  /// The header matches.
  /// Matches incoming requests with rule based on request header value before applying rule action.
  /// See `header_matches` Block for details.
  final List<ListenerRuleMatchHttpMatchHeaderMatch>? headerMatches;

  /// The HTTP method type.
  final String? method;

  /// The path match.
  /// See `path_match` Block for details.
  final ListenerRuleMatchHttpMatchPathMatch? pathMatch;

  ListenerRuleMatchHttpMatch({
    this.headerMatches,
    this.method,
    this.pathMatch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final headerMatchesValue = headerMatches;
    if (headerMatchesValue != null) {
      map['headerMatches'] = Input.encodeList<
          ListenerRuleMatchHttpMatchHeaderMatch,
          Map<String, dynamic>>(headerMatchesValue, (value) => value.toMap());
    }
    final methodValue = method;
    if (methodValue != null) {
      map['method'] = methodValue;
    }
    final pathMatchValue = pathMatch;
    if (pathMatchValue != null) {
      map['pathMatch'] = pathMatchValue.toMap();
    }
    return map;
  }

  factory ListenerRuleMatchHttpMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatch(
      headerMatches: map['headerMatches'] == null
          ? null
          : Input.decodeList<ListenerRuleMatchHttpMatchHeaderMatch>(
              map['headerMatches'],
              (value) => ListenerRuleMatchHttpMatchHeaderMatch.fromMap(
                  (value as Map).cast<String, dynamic>())),
      method: map['method'] == null ? null : map['method'] as String,
      pathMatch: map['pathMatch'] == null
          ? null
          : ListenerRuleMatchHttpMatchPathMatch.fromMap(
              (map['pathMatch'] as Map).cast<String, dynamic>()),
    );
  }
}
