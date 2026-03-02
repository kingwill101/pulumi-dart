// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SiteMonitorOptionJsonAssertion {
  /// Assertion comparison operator. Value:
  /// - contains: contains.
  /// - doesNotContain: does not contain.
  /// - matches: regular matching.
  /// - doesNotMatch: regular mismatch.
  /// - is: Numeric equals or character matches equals.
  /// - isNot: not equal.
  /// - Lesthan: less.
  /// - moreThan: Greater.
  final pulumi.Input<String>? operator;
  /// Assertion matches the target numeric value or character of the comparison.
  final pulumi.Input<String>? target;
  final pulumi.Input<String>? type;

  /// Creates a new [SiteMonitorOptionJsonAssertion].
  /// [operator] Assertion comparison operator. Value:
  /// [target] Assertion matches the target numeric value or character of the comparison.
  /// [type] Optional.
  SiteMonitorOptionJsonAssertion({
    this.operator,
    this.target,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operator': ?operator,
      'target': ?target,
      'type': ?type,
    };
  }

  factory SiteMonitorOptionJsonAssertion.fromMap(Map<String, dynamic> map) {
    return SiteMonitorOptionJsonAssertion(
      operator: map['operator'] == null ? null : (map['operator']! as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

