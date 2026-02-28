// ignore_for_file: unused_element, unnecessary_cast

import 'classification_job_s3_job_definition_bucket_criteria_includes_and_simple_criterion.dart';
import 'classification_job_s3_job_definition_bucket_criteria_includes_and_tag_criterion.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion? simpleCriterion;
  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion? tagCriterion;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd].
  /// [simpleCriterion] A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)
  /// [tagCriterion] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?simpleCriterion == null ? null : simpleCriterion!.toMap(),
      'tagCriterion': ?tagCriterion == null ? null : tagCriterion!.toMap(),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd(
      simpleCriterion: map['simpleCriterion'] == null ? null : ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion.fromMap((map['simpleCriterion'] as Map).cast<String, dynamic>()),
      tagCriterion: map['tagCriterion'] == null ? null : ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion.fromMap((map['tagCriterion'] as Map).cast<String, dynamic>()),
    );
  }
}

