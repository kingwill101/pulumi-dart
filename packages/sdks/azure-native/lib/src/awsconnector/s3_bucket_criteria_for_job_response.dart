// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_block_for_job_response.dart';

/// Definition of S3BucketCriteriaForJob
class S3BucketCriteriaForJobResponse {
  /// <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  final pulumi.Input<CriteriaBlockForJobResponse>? excludes;
  /// <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  final pulumi.Input<CriteriaBlockForJobResponse>? includes;

  /// Creates a new [S3BucketCriteriaForJobResponse].
  /// [excludes] <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  /// [includes] <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  S3BucketCriteriaForJobResponse({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?pulumi.Input.mapOptionalInputValue<CriteriaBlockForJobResponse, Map<String, dynamic>>(excludes, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<CriteriaBlockForJobResponse, Map<String, dynamic>>(includes, (value) => value.toMap()),
    };
  }

  factory S3BucketCriteriaForJobResponse.fromMap(Map<String, dynamic> map) {
    return S3BucketCriteriaForJobResponse(
      excludes: map['excludes'] == null ? null : (CriteriaBlockForJobResponse.fromMap((map['excludes']! as Map).cast<String, dynamic>())).input(),
      includes: map['includes'] == null ? null : (CriteriaBlockForJobResponse.fromMap((map['includes']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

