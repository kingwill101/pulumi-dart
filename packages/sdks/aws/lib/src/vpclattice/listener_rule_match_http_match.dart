// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_match_http_match_header_match.dart';
import 'listener_rule_match_http_match_path_match.dart';

class ListenerRuleMatchHttpMatch {
  /// Header matches that match incoming requests based on the request header value before applying the rule action. See `headerMatches` Block for details.
  final pulumi.Input<List<ListenerRuleMatchHttpMatchHeaderMatch>?>? headerMatches;
  /// HTTP method type.
  final pulumi.Input<String?>? method;
  /// Path match. See `pathMatch` Block for details.
  final pulumi.Input<ListenerRuleMatchHttpMatchPathMatch?>? pathMatch;

  /// Creates a new [ListenerRuleMatchHttpMatch].
  /// [headerMatches] Header matches that match incoming requests based on the request header value before applying the rule action. See `headerMatches` Block for details.
  /// [method] HTTP method type.
  /// [pathMatch] Path match. See `pathMatch` Block for details.
  const ListenerRuleMatchHttpMatch({
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
      headerMatches: (() { final guardedValue = map['headerMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerRuleMatchHttpMatchHeaderMatch>(guardedValue, (value) => ListenerRuleMatchHttpMatchHeaderMatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pathMatch: (() { final guardedValue = map['pathMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerRuleMatchHttpMatchPathMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
