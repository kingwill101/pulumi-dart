// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_match_http_match_header_match.dart';
import 'listener_rule_match_http_match_path_match.dart';

class ListenerRuleMatchHttpMatch {
  /// The header matches.
  /// Matches incoming requests with rule based on request header value before applying rule action.
  /// See `header_matches` Block for details.
  final pulumi.Input<List<ListenerRuleMatchHttpMatchHeaderMatch>>? headerMatches;
  /// The HTTP method type.
  final pulumi.Input<String>? method;
  /// The path match.
  /// See `path_match` Block for details.
  final pulumi.Input<ListenerRuleMatchHttpMatchPathMatch>? pathMatch;

  /// Creates a new [ListenerRuleMatchHttpMatch].
  /// [headerMatches] The header matches.
  /// [method] The HTTP method type.
  /// [pathMatch] The path match.
  ListenerRuleMatchHttpMatch({
    this.headerMatches,
    this.method,
    this.pathMatch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerMatches': ?pulumi.Input.mapOptionalInputValue<List<ListenerRuleMatchHttpMatchHeaderMatch>, List<Map<String, dynamic>>>(headerMatches, (value) => pulumi.Input.encodeList<ListenerRuleMatchHttpMatchHeaderMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'method': ?method,
      'pathMatch': ?pulumi.Input.mapOptionalInputValue<ListenerRuleMatchHttpMatchPathMatch, Map<String, dynamic>>(pathMatch, (value) => value.toMap()),
    };
  }

  factory ListenerRuleMatchHttpMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatch(
      headerMatches: map['headerMatches'] == null ? null : ((pulumi.Input.decodeList<ListenerRuleMatchHttpMatchHeaderMatch>(map['headerMatches']!, (value) => ListenerRuleMatchHttpMatchHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      method: map['method'] == null ? null : ((map['method'] as String).input()).input(),
      pathMatch: map['pathMatch'] == null ? null : ((ListenerRuleMatchHttpMatchPathMatch.fromMap((map['pathMatch']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

