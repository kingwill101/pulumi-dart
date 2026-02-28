// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm {
  /// The operator to use in a condition. Valid values are: `EQ`, `GT`, `GTE`, `LT`, `LTE`, `NE`, `CONTAINS`, `STARTS_WITH`
  final String? comparator;

  /// The object property to use in the condition.
  final String? key;

  /// An array that lists the values to use in the condition.
  final List<String>? values;

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
    final map = <String, dynamic>{};
    final comparatorValue = comparator;
    if (comparatorValue != null) {
      map['comparator'] = comparatorValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionScopingIncludesAndSimpleScopeTerm(
      comparator:
          map['comparator'] == null ? null : map['comparator'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
