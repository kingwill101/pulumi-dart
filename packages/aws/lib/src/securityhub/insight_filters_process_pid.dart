// ignore_for_file: unused_element, unnecessary_cast

class InsightFiltersProcessPid {
  /// The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  final String? eq;

  /// The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final String? gte;

  /// The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  final String? lte;

  /// Creates a new [InsightFiltersProcessPid].
  /// [eq] The equal-to condition to be applied to a single field when querying for findings, provided as a String.
  /// [gte] The greater-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  /// [lte] The less-than-equal condition to be applied to a single field when querying for findings, provided as a String.
  InsightFiltersProcessPid({this.eq, this.gte, this.lte});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'eq': ?eq, 'gte': ?gte, 'lte': ?lte};
  }

  factory InsightFiltersProcessPid.fromMap(Map<String, dynamic> map) {
    return InsightFiltersProcessPid(
      eq: map['eq'] == null ? null : map['eq'] as String,
      gte: map['gte'] == null ? null : map['gte'] as String,
      lte: map['lte'] == null ? null : map['lte'] as String,
    );
  }
}
