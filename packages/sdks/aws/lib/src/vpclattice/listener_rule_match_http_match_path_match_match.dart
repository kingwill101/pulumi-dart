// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleMatchHttpMatchPathMatchMatch {
  /// Exact type match.
  final pulumi.Input<String?>? exact;
  /// Prefix type match. Matches the value with the prefix.
  final pulumi.Input<String?>? prefix;

  /// Creates a new [ListenerRuleMatchHttpMatchPathMatchMatch].
  /// [exact] Exact type match.
  /// [prefix] Prefix type match. Matches the value with the prefix.
  const ListenerRuleMatchHttpMatchPathMatchMatch({
    this.exact,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exact': ?exact,
      'prefix': ?prefix,
    };
  }

  factory ListenerRuleMatchHttpMatchPathMatchMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchPathMatchMatch(
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
