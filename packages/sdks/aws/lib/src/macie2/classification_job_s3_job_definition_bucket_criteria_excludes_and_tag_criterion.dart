// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_excludes_and_tag_criterion_tag_value.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion {
  /// The operator to use in the condition. Valid combination and values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  final String? comparator;
  /// The  tag key and value pairs to use in the condition. One or more blocks are allowed. (documented below)
  final List<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue>? tagValues;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion].
  /// [comparator] The operator to use in the condition. Valid combination and values are available in the [AWS Documentation](https://docs.aws.amazon.com/macie/latest/APIReference/jobs.html#jobs-model-jobcomparator)
  /// [tagValues] The  tag key and value pairs to use in the condition. One or more blocks are allowed. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion({
    this.comparator,
    this.tagValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comparator': ?comparator,
      'tagValues': ?tagValues == null ? null : pulumi.Input.encodeList<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue, Map<String, dynamic>>(tagValues!, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion(
      comparator: map['comparator'] == null ? null : map['comparator'] as String,
      tagValues: map['tagValues'] == null ? null : pulumi.Input.decodeList<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue>(map['tagValues'], (value) => ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterionTagValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

