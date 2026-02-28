// ignore_for_file: unused_element, unnecessary_cast


class FindingsFilterFindingCriteriaCriterion {
  /// The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.
  final List<String>? eqExactMatches;
  /// The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  final List<String>? eqs;
  /// The name of the field to be evaluated.
  final String field;
  /// The value for the property is greater than the specified value.
  final String? gt;
  /// The value for the property is greater than or equal to the specified value.
  final String? gte;
  /// The value for the property is less than the specified value.
  final String? lt;
  /// The value for the property is less than or equal to the specified value.
  final String? lte;
  /// The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  final List<String>? neqs;

  /// Creates a new [FindingsFilterFindingCriteriaCriterion].
  /// [eqExactMatches] The value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.
  /// [eqs] The value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  /// [field] The name of the field to be evaluated.
  /// [gt] The value for the property is greater than the specified value.
  /// [gte] The value for the property is greater than or equal to the specified value.
  /// [lt] The value for the property is less than the specified value.
  /// [lte] The value for the property is less than or equal to the specified value.
  /// [neqs] The value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  FindingsFilterFindingCriteriaCriterion({
    this.eqExactMatches,
    this.eqs,
    required this.field,
    this.gt,
    this.gte,
    this.lt,
    this.lte,
    this.neqs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eqExactMatches': ?eqExactMatches,
      'eqs': ?eqs,
      'field': field,
      'gt': ?gt,
      'gte': ?gte,
      'lt': ?lt,
      'lte': ?lte,
      'neqs': ?neqs,
    };
  }

  factory FindingsFilterFindingCriteriaCriterion.fromMap(Map<String, dynamic> map) {
    return FindingsFilterFindingCriteriaCriterion(
      eqExactMatches: map['eqExactMatches'] == null ? null : (map['eqExactMatches'] as List).cast<String>(),
      eqs: map['eqs'] == null ? null : (map['eqs'] as List).cast<String>(),
      field: map['field'] as String,
      gt: map['gt'] == null ? null : map['gt'] as String,
      gte: map['gte'] == null ? null : map['gte'] as String,
      lt: map['lt'] == null ? null : map['lt'] as String,
      lte: map['lte'] == null ? null : map['lte'] as String,
      neqs: map['neqs'] == null ? null : (map['neqs'] as List).cast<String>(),
    );
  }
}

