// ignore_for_file: unused_element, unnecessary_cast

import 'classification_job_s3_job_definition_bucket_criteria_excludes_and_simple_criterion.dart';
import 'classification_job_s3_job_definition_bucket_criteria_excludes_and_tag_criterion.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion?
  simpleCriterion;

  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion?
  tagCriterion;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd].
  /// [simpleCriterion] A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)
  /// [tagCriterion] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?simpleCriterion == null
          ? null
          : simpleCriterion!.toMap(),
      'tagCriterion': ?tagCriterion == null ? null : tagCriterion!.toMap(),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd(
      simpleCriterion: map['simpleCriterion'] == null
          ? null
          : ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion.fromMap(
              (map['simpleCriterion'] as Map).cast<String, dynamic>(),
            ),
      tagCriterion: map['tagCriterion'] == null
          ? null
          : ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion.fromMap(
              (map['tagCriterion'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
