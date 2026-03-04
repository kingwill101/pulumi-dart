// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppCustomRule {
  /// Condition for a URL rewrite or redirect rule, such as a country code.
  final pulumi.Input<String>? condition;

  /// Source pattern for a URL rewrite or redirect rule.
  final pulumi.Input<String> source;

  /// Status code for a URL rewrite or redirect rule. Valid values: `200`, `301`, `302`, `404`, `404-200`.
  final pulumi.Input<String>? status;

  /// Target pattern for a URL rewrite or redirect rule.
  final pulumi.Input<String> target;

  /// Creates a new [AppCustomRule].
  /// [condition] Condition for a URL rewrite or redirect rule, such as a country code.
  /// [source] Source pattern for a URL rewrite or redirect rule.
  /// [status] Status code for a URL rewrite or redirect rule. Valid values: `200`, `301`, `302`, `404`, `404-200`.
  /// [target] Target pattern for a URL rewrite or redirect rule.
  AppCustomRule({
    this.condition,
    required this.source,
    this.status,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'source': source,
      'status': ?status,
      'target': target,
    };
  }

  factory AppCustomRule.fromMap(Map<String, dynamic> map) {
    return AppCustomRule(
      condition: (() {
        final guardedValue = map['condition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
