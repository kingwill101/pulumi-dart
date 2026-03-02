// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_includes_and_tag_criterion_tag_value.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion {
  /// The operator to use in the condition. Valid combination and values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  final pulumi.Input<String>? comparator;
  /// The  tag key and value pairs to use in the condition. One or more blocks are allowed. (documented below)
  final pulumi.Input<List<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue>>? tagValues;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion].
  /// [comparator] The operator to use in the condition. Valid combination and values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  /// [tagValues] The  tag key and value pairs to use in the condition. One or more blocks are allowed. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion({
    this.comparator,
    this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator,
      'tagValues': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue>, List<Map<String, dynamic>>>(tagValues, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion(
      comparator: map['comparator'] == null ? null : (map['comparator'] as String).input(),
      tagValues: map['tagValues'] == null ? null : (pulumi.Input.decodeList<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue>(map['tagValues'], (value) => ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterionTagValue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

