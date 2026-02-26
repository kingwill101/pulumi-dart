// ignore_for_file: unused_element, unnecessary_cast

class AutomationRuleCriteriaConfidence {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final double? eq;
  final double? gt;

  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final double? gte;
  final double? lt;

  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final double? lte;

  AutomationRuleCriteriaConfidence({
    this.eq,
    this.gt,
    this.gte,
    this.lt,
    this.lte,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eqValue = eq;
    if (eqValue != null) {
      map['eq'] = eqValue;
    }
    final gtValue = gt;
    if (gtValue != null) {
      map['gt'] = gtValue;
    }
    final gteValue = gte;
    if (gteValue != null) {
      map['gte'] = gteValue;
    }
    final ltValue = lt;
    if (ltValue != null) {
      map['lt'] = ltValue;
    }
    final lteValue = lte;
    if (lteValue != null) {
      map['lte'] = lteValue;
    }
    return map;
  }

  factory AutomationRuleCriteriaConfidence.fromMap(Map<String, dynamic> map) {
    return AutomationRuleCriteriaConfidence(
      eq: map['eq'] == null ? null : map['eq'] as double,
      gt: map['gt'] == null ? null : map['gt'] as double,
      gte: map['gte'] == null ? null : map['gte'] as double,
      lt: map['lt'] == null ? null : map['lt'] as double,
      lte: map['lte'] == null ? null : map['lte'] as double,
    );
  }
}
