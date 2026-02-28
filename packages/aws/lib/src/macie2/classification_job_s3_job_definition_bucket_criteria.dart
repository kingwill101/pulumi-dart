// ignore_for_file: unused_element, unnecessary_cast

import 'classification_job_s3_job_definition_bucket_criteria_excludes.dart';
import 'classification_job_s3_job_definition_bucket_criteria_includes.dart';

class ClassificationJobS3JobDefinitionBucketCriteria {
  /// The property- or tag-based conditions that determine which S3 buckets to exclude from the analysis. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteriaExcludes? excludes;

  /// The property- or tag-based conditions that determine which S3 buckets to include in the analysis. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteriaIncludes? includes;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteria].
  /// [excludes] The property- or tag-based conditions that determine which S3 buckets to exclude from the analysis. (documented below)
  /// [includes] The property- or tag-based conditions that determine which S3 buckets to include in the analysis. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteria({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludesValue = excludes;
    if (excludesValue != null) {
      map['excludes'] = excludesValue.toMap();
    }
    final includesValue = includes;
    if (includesValue != null) {
      map['includes'] = includesValue.toMap();
    }
    return map;
  }

  factory ClassificationJobS3JobDefinitionBucketCriteria.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteria(
      excludes: map['excludes'] == null
          ? null
          : ClassificationJobS3JobDefinitionBucketCriteriaExcludes.fromMap(
              (map['excludes'] as Map).cast<String, dynamic>()),
      includes: map['includes'] == null
          ? null
          : ClassificationJobS3JobDefinitionBucketCriteriaIncludes.fromMap(
              (map['includes'] as Map).cast<String, dynamic>()),
    );
  }
}
