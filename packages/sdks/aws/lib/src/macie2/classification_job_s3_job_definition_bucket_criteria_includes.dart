// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_job_s3_job_definition_bucket_criteria_includes_and.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaIncludes {
  /// An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)
  final pulumi.Input<List<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd>>? ands;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketCriteriaIncludes].
  /// [ands] An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)
  const ClassificationJobS3JobDefinitionBucketCriteriaIncludes({
    this.ands,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ands': ?pulumi.Input.mapOptionalInputValue<List<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd>, List<Map<String, dynamic>>>(ands, (value) => pulumi.Input.encodeList<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludes.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludes(
      ands: (() { final guardedValue = map['ands']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd>(guardedValue, (value) => ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
