// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_block_for_job.dart';

/// Definition of S3BucketCriteriaForJob
class S3BucketCriteriaForJob {
  /// &lt;p&gt;The property- and tag-based conditions that determine which buckets to exclude from the job.&lt;/p&gt;
  final pulumi.Input<CriteriaBlockForJob?>? excludes;
  /// &lt;p&gt;The property- and tag-based conditions that determine which buckets to include in the job.&lt;/p&gt;
  final pulumi.Input<CriteriaBlockForJob?>? includes;

  /// Creates a new [S3BucketCriteriaForJob].
  /// [excludes] &lt;p&gt;The property- and tag-based conditions that determine which buckets to exclude from the job.&lt;/p&gt;
  /// [includes] &lt;p&gt;The property- and tag-based conditions that determine which buckets to include in the job.&lt;/p&gt;
  const S3BucketCriteriaForJob({
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
      excludes: (() { final guardedValue = map['excludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CriteriaBlockForJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includes: (() { final guardedValue = map['includes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CriteriaBlockForJob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
