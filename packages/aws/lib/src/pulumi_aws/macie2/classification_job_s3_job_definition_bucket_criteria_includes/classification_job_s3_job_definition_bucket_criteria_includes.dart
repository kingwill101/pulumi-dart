// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../classification_job_s3_job_definition_bucket_criteria_includes_and/classification_job_s3_job_definition_bucket_criteria_includes_and.dart';

class ClassificationJobS3JobDefinitionBucketCriteriaIncludes {
  /// An array of conditions, one for each condition that determines which objects to include or exclude from the job. (documented below)
  final List<ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd>? ands;

  ClassificationJobS3JobDefinitionBucketCriteriaIncludes({
    this.ands,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final andsValue = ands;
    if (andsValue != null) {
      map['ands'] = Input.encodeList<
          ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd,
          Map<String, dynamic>>(andsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClassificationJobS3JobDefinitionBucketCriteriaIncludes.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketCriteriaIncludes(
      ands: map['ands'] == null
          ? null
          : Input.decodeList<
                  ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd>(
              map['ands'],
              (value) =>
                  ClassificationJobS3JobDefinitionBucketCriteriaIncludesAnd
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
