// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationRuleCriteriaCriticality {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<double>? eq;
  final pulumi.Input<double>? gt;

  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<double>? gte;
  final pulumi.Input<double>? lt;

  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final pulumi.Input<double>? lte;

  /// Creates a new [AutomationRuleCriteriaCriticality].
  /// [eq] The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  /// [gt] Optional.
  /// [gte] The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  /// [lt] Optional.
  /// [lte] The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  AutomationRuleCriteriaCriticality({
    this.eq,
    this.gt,
    this.gte,
    this.lt,
    this.lte,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eq': ?eq,
      'gt': ?gt,
      'gte': ?gte,
      'lt': ?lt,
      'lte': ?lte,
    };
  }

  factory AutomationRuleCriteriaCriticality.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaCriticality(
      eq: (() {
        final guardedValue = map['eq'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      gt: (() {
        final guardedValue = map['gt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      gte: (() {
        final guardedValue = map['gte'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      lt: (() {
        final guardedValue = map['lt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      lte: (() {
        final guardedValue = map['lte'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
