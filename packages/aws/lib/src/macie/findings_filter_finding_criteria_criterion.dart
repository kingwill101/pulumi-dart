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
    final map = <String, dynamic>{};
    final eqExactMatchesValue = eqExactMatches;
    if (eqExactMatchesValue != null) {
      map['eqExactMatches'] = eqExactMatchesValue;
    }
    final eqsValue = eqs;
    if (eqsValue != null) {
      map['eqs'] = eqsValue;
    }
    map['field'] = field;
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
    final neqsValue = neqs;
    if (neqsValue != null) {
      map['neqs'] = neqsValue;
    }
    return map;
  }

  factory FindingsFilterFindingCriteriaCriterion.fromMap(
      Map<String, dynamic> map) {
    return FindingsFilterFindingCriteriaCriterion(
      eqExactMatches: map['eqExactMatches'] == null
          ? null
          : (map['eqExactMatches'] as List).cast<String>(),
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
