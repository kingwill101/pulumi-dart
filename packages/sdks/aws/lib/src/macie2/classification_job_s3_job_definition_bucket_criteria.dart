// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_excludes.dart';
import 'classification_job_s3_job_definition_bucket_criteria_includes.dart';

class ClassificationJobS3JobDefinitionBucketCriteria {
  /// The property- or tag-based conditions that determine which S3 buckets to exclude from the analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteriaExcludes>?
  excludes;

  /// The property- or tag-based conditions that determine which S3 buckets to include in the analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteriaIncludes>?
  includes;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteria].
  /// [excludes] The property- or tag-based conditions that determine which S3 buckets to exclude from the analysis. (documented below)
  /// [includes] The property- or tag-based conditions that determine which S3 buckets to include in the analysis. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteria({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes':
          ?pulumi.Input.mapOptionalInputValue<
            ClassificationJobS3JobDefinitionBucketCriteriaExcludes,
            Map<String, dynamic>
          >(excludes, (value) => value.toMap()),
      'includes':
          ?pulumi.Input.mapOptionalInputValue<
            ClassificationJobS3JobDefinitionBucketCriteriaIncludes,
            Map<String, dynamic>
          >(includes, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteria.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationJobS3JobDefinitionBucketCriteria(
      excludes: (() {
        final guardedValue = map['excludes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClassificationJobS3JobDefinitionBucketCriteriaExcludes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      includes: (() {
        final guardedValue = map['includes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClassificationJobS3JobDefinitionBucketCriteriaIncludes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
