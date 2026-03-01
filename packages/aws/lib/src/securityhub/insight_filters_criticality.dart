// ignore_for_file: unused_element, unnecessary_cast


class InsightFiltersCriticality {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final String? eq;
  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final String? gte;
  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final String? lte;

  /// Creates a new [InsightFiltersCriticality].
  /// [eq] The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  /// [gte] The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  /// [lte] The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  InsightFiltersCriticality({
    this.eq,
    this.gte,
    this.lte,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eq': ?eq,
      'gte': ?gte,
      'lte': ?lte,
    };
  }

  factory InsightFiltersCriticality.fromMap(Map<String, dynamic> map) {
    return InsightFiltersCriticality(
      eq: map['eq'] == null ? null : map['eq'] as String,
      gte: map['gte'] == null ? null : map['gte'] as String,
      lte: map['lte'] == null ? null : map['lte'] as String,
    );
  }
}

