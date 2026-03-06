// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleMatchHttpMatchHeaderMatchMatch {
  /// Specifies a contains type match.
  final pulumi.Input<String>? contains;
  /// Specifies an exact type match.
  final pulumi.Input<String>? exact;
  /// Specifies a prefix type match.
  /// Matches the value with the prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [ListenerRuleMatchHttpMatchHeaderMatchMatch].
  /// [contains] Specifies a contains type match.
  /// [exact] Specifies an exact type match.
  /// [prefix] Specifies a prefix type match.
  const ListenerRuleMatchHttpMatchHeaderMatchMatch({
    this.contains,
    this.exact,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contains': ?contains,
      'exact': ?exact,
      'prefix': ?prefix,
    };
  }

  factory ListenerRuleMatchHttpMatchHeaderMatchMatch.fromMap(Map<String, dynamic> map) {
    return ListenerRuleMatchHttpMatchHeaderMatchMatch(
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exact: (() { final guardedValue = map['exact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

