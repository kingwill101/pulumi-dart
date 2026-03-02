// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_block_for_job.dart';

/// Definition of S3BucketCriteriaForJob
class S3BucketCriteriaForJob {
  /// <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  final pulumi.Input<CriteriaBlockForJob>? excludes;
  /// <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  final pulumi.Input<CriteriaBlockForJob>? includes;

  /// Creates a new [S3BucketCriteriaForJob].
  /// [excludes] <p>The property- and tag-based conditions that determine which buckets to exclude from the job.</p>
  /// [includes] <p>The property- and tag-based conditions that determine which buckets to include in the job.</p>
  S3BucketCriteriaForJob({
    this.excludes,
    this.includes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes': ?pulumi.Input.mapOptionalInputValue<CriteriaBlockForJob, Map<String, dynamic>>(excludes, (value) => value.toMap()),
      'includes': ?pulumi.Input.mapOptionalInputValue<CriteriaBlockForJob, Map<String, dynamic>>(includes, (value) => value.toMap()),
    };
  }

  factory S3BucketCriteriaForJob.fromMap(Map<String, dynamic> map) {
    return S3BucketCriteriaForJob(
      excludes: map['excludes'] == null ? null : (CriteriaBlockForJob.fromMap((map['excludes'] as Map).cast<String, dynamic>())).input(),
      includes: map['includes'] == null ? null : (CriteriaBlockForJob.fromMap((map['includes'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

