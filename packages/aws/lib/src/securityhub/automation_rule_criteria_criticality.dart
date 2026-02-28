// ignore_for_file: unused_element, unnecessary_cast


class AutomationRuleCriteriaCriticality {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final double? eq;
  final double? gt;
  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final double? gte;
  final double? lt;
  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final double? lte;

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
      eq: map['eq'] == null ? null : map['eq'] as double,
      gt: map['gt'] == null ? null : map['gt'] as double,
      gte: map['gte'] == null ? null : map['gte'] as double,
      lt: map['lt'] == null ? null : map['lt'] as double,
      lte: map['lte'] == null ? null : map['lte'] as double,
    );
  }
}

