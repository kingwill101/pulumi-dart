// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FilterFindingCriteriaCriterion {
  /// List of string values to be evaluated.
  final pulumi.Input<List<String>>? equals;
  /// The name of the field to be evaluated. The full list of field names can be found in [AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_filter-findings.html#filter_criteria).
  final pulumi.Input<String> field;
  /// A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? greaterThan;
  /// A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? greaterThanOrEqual;
  /// A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? lessThan;
  /// A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? lessThanOrEqual;
  /// List of string values to be evaluated as matching conditions.
  final pulumi.Input<List<String>>? matches;
  /// List of string values to be evaluated.
  final pulumi.Input<List<String>>? notEquals;
  /// List of string values to be evaluated as non-matching conditions.
  final pulumi.Input<List<String>>? notMatches;

  /// Creates a new [FilterFindingCriteriaCriterion].
  /// [equals] List of string values to be evaluated.
  /// [field] The name of the field to be evaluated. The full list of field names can be found in [AWS documentation](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_filter-findings.html#filter_criteria).
  /// [greaterThan] A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [greaterThanOrEqual] A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [lessThan] A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [lessThanOrEqual] A value to be evaluated. Accepts either an integer given as a string (i.e., enclosed in quotations) or a date in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [matches] List of string values to be evaluated as matching conditions.
  /// [notEquals] List of string values to be evaluated.
  /// [notMatches] List of string values to be evaluated as non-matching conditions.
  const FilterFindingCriteriaCriterion({
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
      equals: (() { final guardedValue = map['equals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
      greaterThan: (() { final guardedValue = map['greaterThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      greaterThanOrEqual: (() { final guardedValue = map['greaterThanOrEqual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lessThan: (() { final guardedValue = map['lessThan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lessThanOrEqual: (() { final guardedValue = map['lessThanOrEqual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matches: (() { final guardedValue = map['matches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notEquals: (() { final guardedValue = map['notEquals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notMatches: (() { final guardedValue = map['notMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
