// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_excludes_and.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaExcludes {
  /// An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)
  final pulumi.Input<List<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd>>? ands;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaExcludes].
  /// [ands] An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)
  ClassificationJobS3JobDefinitionBucketCriteriaExcludes({
    this.ands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaExcludes.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaExcludes(
      ands: map['ands'] == null ? null : ((pulumi.Input.decodeList<ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd>(map['ands']!, (value) => ClassificationJobS3JobDefinitionBucketCriteriaExcludesAnd.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

