// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersConfidence {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final String? eq;

  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final String? gte;

  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final String? lte;

  InsightFiltersConfidence({
    this.eq,
    this.gte,
    this.lte,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eqValue = eq;
    if (eqValue != null) {
      map['eq'] = eqValue;
    }
    final gteValue = gte;
    if (gteValue != null) {
      map['gte'] = gteValue;
    }
    final lteValue = lte;
    if (lteValue != null) {
      map['lte'] = lteValue;
    }
    return map;
  }

  factory InsightFiltersConfidence.fromMap(Map<String, dynamic> map) {
    return InsightFiltersConfidence(
      eq: map['eq'] == null ? null : map['eq'] as String,
      gte: map['gte'] == null ? null : map['gte'] as String,
      lte: map['lte'] == null ? null : map['lte'] as String,
    );
  }
}
