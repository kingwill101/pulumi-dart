// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_excludes_and_simple_criterion.dart';
import 'classification_job_s3_job_definition_bucket_criteria_excludes_and_tag_criterion.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd {
  /// Property-based condition that defines a property, operator, and one or more values for including or excluding an S3 bucket from the job. See `includes.simple_criterion` Block for details.
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion?>? simpleCriterion;
  /// Tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 bucket from the job. See `includes.tag_criterion` Block for details.
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion?>? tagCriterion;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd].
  /// [simpleCriterion] Property-based condition that defines a property, operator, and one or more values for including or excluding an S3 bucket from the job. See `includes.simple_criterion` Block for details.
  /// [tagCriterion] Tag-based condition that defines the operator and tag keys or tag key and value pairs for including or excluding an S3 bucket from the job. See `includes.tag_criterion` Block for details.
  const ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd({
    this.simpleCriterion,
    this.tagCriterion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleCriterion': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion, Map<String, dynamic>>(simpleCriterion, (value) => value.toMap()),
      'tagCriterion': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion, Map<String, dynamic>>(tagCriterion, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd(
      simpleCriterion: (() { final guardedValue = map['simpleCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndSimpleCriterion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagCriterion: (() { final guardedValue = map['tagCriterion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassificationJobS3JobDefinitionBucketCriteriaExcludesAndTagCriterion.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
