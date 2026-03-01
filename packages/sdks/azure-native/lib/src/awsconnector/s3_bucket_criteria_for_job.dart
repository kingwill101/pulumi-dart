// ignore_for_file: unused_element, unnecessary_cast

import 'criteria_block_for_job.dart';

/// Definition of S3BucketCriteriaForJob
class S3BucketCriteriaForJob {
  /// <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  final CriteriaBlockForJob? excludes;
  /// <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  final CriteriaBlockForJob? includes;

  /// Creates a new [S3BucketCriteriaForJob].
  /// [excludes] <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  /// [includes] <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  S3BucketCriteriaForJob({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?excludes == null ? null : excludes!.toMap(),
      'includes': ?includes == null ? null : includes!.toMap(),
    };
  }

  factory S3BucketCriteriaForJob.fromMap(Map<String, dynamic> map) {
    return S3BucketCriteriaForJob(
      excludes: map['excludes'] == null ? null : CriteriaBlockForJob.fromMap((map['excludes'] as Map).cast<String, dynamic>()),
      includes: map['includes'] == null ? null : CriteriaBlockForJob.fromMap((map['includes'] as Map).cast<String, dynamic>()),
    );
  }
}

