// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FindingsFilterFindingCriteriaCriterion {
  /// Value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.
  final pulumi.Input<List<String>?>? eqExactMatches;
  /// Value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  final pulumi.Input<List<String>?>? eqs;
  /// Name of the field to be evaluated.
  final pulumi.Input<String> field;
  /// Value for the property is greater than the specified value.
  final pulumi.Input<String?>? gt;
  /// Value for the property is greater than or equal to the specified value.
  final pulumi.Input<String?>? gte;
  /// Value for the property is less than the specified value.
  final pulumi.Input<String?>? lt;
  /// Value for the property is less than or equal to the specified value.
  final pulumi.Input<String?>? lte;
  /// Value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  final pulumi.Input<List<String>?>? neqs;

  /// Creates a new [FindingsFilterFindingCriteriaCriterion].
  /// [eqExactMatches] Value for the property exclusively matches (equals an exact match for) all the specified values. If you specify multiple values, Amazon Macie uses AND logic to join the values.
  /// [eqs] Value for the property matches (equals) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  /// [field] Name of the field to be evaluated.
  /// [gt] Value for the property is greater than the specified value.
  /// [gte] Value for the property is greater than or equal to the specified value.
  /// [lt] Value for the property is less than the specified value.
  /// [lte] Value for the property is less than or equal to the specified value.
  /// [neqs] Value for the property doesn't match (doesn't equal) the specified value. If you specify multiple values, Amazon Macie uses OR logic to join the values.
  const FindingsFilterFindingCriteriaCriterion({
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
      eqExactMatches: (() { final guardedValue = map['eqExactMatches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eqs: (() { final guardedValue = map['eqs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      field: pulumi.Input.fromValue(map['field'] as String),
      gt: (() { final guardedValue = map['gt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gte: (() { final guardedValue = map['gte']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lt: (() { final guardedValue = map['lt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lte: (() { final guardedValue = map['lte']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      neqs: (() { final guardedValue = map['neqs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
