// ignore_for_file: unused_element, unnecessary_cast


class FilterFindingCriteriaCriterion {
  /// List of string values to be evaluated.
  final List<String>? equals;
  /// The name of the field to be evaluated. The full list of field names can be found in [AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_filter-findings.html#filter_criteria).
  final String field;
  /// A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? greaterThan;
  /// A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? greaterThanOrEqual;
  /// A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? lessThan;
  /// A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? lessThanOrEqual;
  /// List of string values to be evaluated as matching conditions.
  final List<String>? matches;
  /// List of string values to be evaluated.
  final List<String>? notEquals;
  /// List of string values to be evaluated as non-matching conditions.
  final List<String>? notMatches;

  /// Creates a new [FilterFindingCriteriaCriterion].
  /// [equals] List of string values to be evaluated.
  /// [field] The name of the field to be evaluated. The full list of field names can be found in [AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_filter-findings.html#filter_criteria).
  /// [greaterThan] A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [greaterThanOrEqual] A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [lessThan] A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [lessThanOrEqual] A value to be evaluated. Accepts either an integer or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [matches] List of string values to be evaluated as matching conditions.
  /// [notEquals] List of string values to be evaluated.
  /// [notMatches] List of string values to be evaluated as non-matching conditions.
  FilterFindingCriteriaCriterion({
    this.equals,
    required this.field,
    this.greaterThan,
    this.greaterThanOrEqual,
    this.lessThan,
    this.lessThanOrEqual,
    this.matches,
    this.notEquals,
    this.notMatches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'equals': ?equals,
      'field': field,
      'greaterThan': ?greaterThan,
      'greaterThanOrEqual': ?greaterThanOrEqual,
      'lessThan': ?lessThan,
      'lessThanOrEqual': ?lessThanOrEqual,
      'matches': ?matches,
      'notEquals': ?notEquals,
      'notMatches': ?notMatches,
    };
  }

  factory FilterFindingCriteriaCriterion.fromMap(Map<String, dynamic> map) {
    return FilterFindingCriteriaCriterion(
      equals: map['equals'] == null ? null : (map['equals'] as List).cast<String>(),
      field: map['field'] as String,
      greaterThan: map['greaterThan'] == null ? null : map['greaterThan'] as String,
      greaterThanOrEqual: map['greaterThanOrEqual'] == null ? null : map['greaterThanOrEqual'] as String,
      lessThan: map['lessThan'] == null ? null : map['lessThan'] as String,
      lessThanOrEqual: map['lessThanOrEqual'] == null ? null : map['lessThanOrEqual'] as String,
      matches: map['matches'] == null ? null : (map['matches'] as List).cast<String>(),
      notEquals: map['notEquals'] == null ? null : (map['notEquals'] as List).cast<String>(),
      notMatches: map['notMatches'] == null ? null : (map['notMatches'] as List).cast<String>(),
    );
  }
}

