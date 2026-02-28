// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion {
  /// The operator to use in a condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  final String? comparator;

  /// The object property to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionkeyforjob)
  final String? key;

  /// An array that lists the values to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionforjob)
  final List<String>? values;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion].
  /// [comparator] The operator to use in a condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  /// [key] The object property to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionkeyforjob)
  /// [values] An array that lists the values to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionforjob)
  ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion({
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

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion(
      comparator:
          map['comparator'] == null ? null : map['comparator'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
