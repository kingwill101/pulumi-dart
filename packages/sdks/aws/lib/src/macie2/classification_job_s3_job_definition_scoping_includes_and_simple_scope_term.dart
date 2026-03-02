// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm {
  /// The operator to use in a condition. Valid values are: `EQ`, `GT`, `GTE`, `LT`, `LTE`, `NE`, `CONTAINS`, `STARTS_WITH`
  final pulumi.Input<String>? comparator;
  /// The object property to use in the condition.
  final pulumi.Input<String>? key;
  /// An array that lists the values to use in the condition.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm].
  /// [comparator] The operator to use in a condition. Valid values are: `EQ`, `GT`, `GTE`, `LT`, `LTE`, `NE`, `CONTAINS`, `STARTS_WITH`
  /// [key] The object property to use in the condition.
  /// [values] An array that lists the values to use in the condition.
  ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm({
    this.comparator,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator,
      'key': ?key,
      'values': ?values,
    };
  }

  factory ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm(
      comparator: map['comparator'] == null ? null : ((map['comparator'] as String).input()).input(),
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      values: map['values'] == null ? null : (((map['values'] as List).cast<String>()).input()).input(),
    );
  }
}

