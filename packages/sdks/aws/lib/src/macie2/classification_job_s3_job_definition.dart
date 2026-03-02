// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria.dart';
import 'classification_job_s3_job_definition_bucket_definition.dart';
import 'classification_job_s3_job_definition_scoping.dart';

class ClassificationJobS3JobDefinition {
  /// The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Conflicts with `bucket_definitions`. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionBucketCriteria>? bucketCriteria;
  /// An array of objects, one for each AWS account that owns buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for the account. Conflicts with `bucket_criteria`. (documented below)
  final pulumi.Input<List<ClassificationJobS3JobDefinitionBucketDefinition>>? bucketDefinitions;
  /// The property- and tag-based conditions that determine which objects to include or exclude from the analysis. (documented below)
  final pulumi.Input<ClassificationJobS3JobDefinitionScoping>? scoping;

  /// Creates a new [ClassificationJobS3JobDefinition].
  /// [bucketCriteria] The property- and tag-based conditions that determine which S3 buckets to include or exclude from the analysis. Conflicts with `bucket_definitions`. (documented below)
  /// [bucketDefinitions] An array of objects, one for each AWS account that owns buckets to analyze. Each object specifies the account ID for an account and one or more buckets to analyze for the account. Conflicts with `bucket_criteria`. (documented below)
  /// [scoping] The property- and tag-based conditions that determine which objects to include or exclude from the analysis. (documented below)
  ClassificationJobS3JobDefinition({
    this.bucketCriteria,
    this.bucketDefinitions,
    this.scoping,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketCriteria': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionBucketCriteria, Map<String, dynamic>>(bucketCriteria, (value) => value.toMap()),
      'bucketDefinitions': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionBucketDefinition>, List<Map<String, dynamic>>>(bucketDefinitions, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionBucketDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scoping': ?pulumi.Input.mapOptionalInputValue<ClassificationJobS3JobDefinitionScoping, Map<String, dynamic>>(scoping, (value) => value.toMap()),
    };
  }

  factory ClassificationJobS3JobDefinition.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinition(
      bucketCriteria: map['bucketCriteria'] == null ? null : ((ClassificationJobS3JobDefinitionBucketCriteria.fromMap((map['bucketCriteria']! as Map).cast<String, dynamic>())).input()).input(),
      bucketDefinitions: map['bucketDefinitions'] == null ? null : ((pulumi.Input.decodeList<ClassificationJobS3JobDefinitionBucketDefinition>(map['bucketDefinitions']!, (value) => ClassificationJobS3JobDefinitionBucketDefinition.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      scoping: map['scoping'] == null ? null : ((ClassificationJobS3JobDefinitionScoping.fromMap((map['scoping']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

