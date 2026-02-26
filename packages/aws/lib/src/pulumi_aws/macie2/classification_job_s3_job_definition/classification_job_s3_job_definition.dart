// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../classification_job_s3_job_definition_bucket_criteria/classification_job_s3_job_definition_bucket_criteria.dart';
import '../classification_job_s3_job_definition_bucket_definition/classification_job_s3_job_definition_bucket_definition.dart';
import '../classification_job_s3_job_definition_scoping/classification_job_s3_job_definition_scoping.dart';

class ClassificationJobS3JobDefinition {
  /// The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Conflicts with <span pulumi-lang-nodejs="`bucketDefinitions`" pulumi-lang-dotnet="`BucketDefinitions`" pulumi-lang-go="`bucketDefinitions`" pulumi-lang-python="`bucket_definitions`" pulumi-lang-yaml="`bucketDefinitions`" pulumi-lang-java="`bucketDefinitions`">`bucket_definitions`</span>. (documented below)
  final ClassificationJobS3JobDefinitionBucketCriteria? bucketCriteria;

  /// An array of objects, one for each AWS account that owns buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for the account. Conflicts with <span pulumi-lang-nodejs="`bucketCriteria`" pulumi-lang-dotnet="`BucketCriteria`" pulumi-lang-go="`bucketCriteria`" pulumi-lang-python="`bucket_criteria`" pulumi-lang-yaml="`bucketCriteria`" pulumi-lang-java="`bucketCriteria`">`bucket_criteria`</span>. (documented below)
  final List<ClassificationJobS3JobDefinitionBucketDefinition>?
      bucketDefinitions;

  /// The property- and tag-based conditions that determine which objects to include or exclude from the analysis. (documented below)
  final ClassificationJobS3JobDefinitionScoping? scoping;

  ClassificationJobS3JobDefinition({
    this.bucketCriteria,
    this.bucketDefinitions,
    this.scoping,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketCriteriaValue = bucketCriteria;
    if (bucketCriteriaValue != null) {
      map['bucketCriteria'] = bucketCriteriaValue.toMap();
    }
    final bucketDefinitionsValue = bucketDefinitions;
    if (bucketDefinitionsValue != null) {
      map['bucketDefinitions'] = Input.encodeList<
              ClassificationJobS3JobDefinitionBucketDefinition,
              Map<String, dynamic>>(
          bucketDefinitionsValue, (value) => value.toMap());
    }
    final scopingValue = scoping;
    if (scopingValue != null) {
      map['scoping'] = scopingValue.toMap();
    }
    return map;
  }

  factory ClassificationJobS3JobDefinition.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinition(
      bucketCriteria: map['bucketCriteria'] == null
          ? null
          : ClassificationJobS3JobDefinitionBucketCriteria.fromMap(
              (map['bucketCriteria'] as Map).cast<String, dynamic>()),
      bucketDefinitions: map['bucketDefinitions'] == null
          ? null
          : Input.decodeList<ClassificationJobS3JobDefinitionBucketDefinition>(
              map['bucketDefinitions'],
              (value) =>
                  ClassificationJobS3JobDefinitionBucketDefinition.fromMap(
                      (value as Map).cast<String, dynamic>())),
      scoping: map['scoping'] == null
          ? null
          : ClassificationJobS3JobDefinitionScoping.fromMap(
              (map['scoping'] as Map).cast<String, dynamic>()),
    );
  }
}
