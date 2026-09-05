// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_includes_and_simple_criterion.dart';
import 'classification_job_s3_job_definition_bucket_criteria_includes_and_tag_criterion.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd {
  /// A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion?>? simpleCriterion;
  /// A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion?>? tagCriterion;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd].
  /// [simpleCriterion] A property-based condition that defines a property, operator, and one or more values for including or excluding an S3 buckets from the job. (documented below)
  /// [tagCriterion] A tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 buckets from the job. (documented below)
  const ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion, Map<String, dynamic>>(simpleCriterion, (value) => value.toMap()),
      'tagCriterion': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion, Map<String, dynamic>>(tagCriterion, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd(
      simpleCriterion: (() { final guardedValue = map['simpleCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndSimpleCriterion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagCriterion: (() { final guardedValue = map['tagCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobS3JobDefinitionBucketCriteriaIncludesAndTagCriterion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
