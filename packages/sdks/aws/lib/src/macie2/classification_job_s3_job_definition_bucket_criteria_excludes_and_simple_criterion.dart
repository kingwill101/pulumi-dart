// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion {
  /// The operator to use in a condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  final pulumi.Input<String?>? comparator;
  /// The object property to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionkeyforjob)
  final pulumi.Input<String?>? key;
  /// An array that lists the values to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionforjob)
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion].
  /// [comparator] The operator to use in a condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  /// [key] The object property to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionkeyforjob)
  /// [values] An array that lists the values to use in the condition. Valid combination of values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-simplecriterionforjob)
  const ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion({
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

  factory ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion(
      comparator: (() { final guardedValue = map['comparator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
