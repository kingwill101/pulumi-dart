// ignore_for_file: unused_element, unnecessary_cast

import 'criteria_block_for_job_response.dart';

/// Definition of S3BucketCriteriaForJob
class S3BucketCriteriaForJobResponse {
  /// <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  final CriteriaBlockForJobResponse? excludes;
  /// <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  final CriteriaBlockForJobResponse? includes;

  /// Creates a new [S3BucketCriteriaForJobResponse].
  /// [excludes] <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  /// [includes] <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  S3BucketCriteriaForJobResponse({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes == null ? null : excludes!.toMap(),
      'includes': ?includes == null ? null : includes!.toMap(),
    };
  }

  factory S3BucketCriteriaForJobResponse.fromMap(Map<String, dynamic> map) {
    return S3BucketCriteriaForJobResponse(
      excludes: map['excludes'] == null ? null : CriteriaBlockForJobResponse.fromMap((map['excludes'] as Map).cast<String, dynamic>()),
      includes: map['includes'] == null ? null : CriteriaBlockForJobResponse.fromMap((map['includes'] as Map).cast<String, dynamic>()),
    );
  }
}

