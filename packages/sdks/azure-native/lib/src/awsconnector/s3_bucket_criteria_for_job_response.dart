// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_block_for_job_response.dart';

/// Definition of S3BucketCriteriaForJob
class S3BucketCriteriaForJobResponse {
  /// &lt;p&gt;The property- and tag-based conditions that determine which buckets to exclude from the job.&lt;/p&gt;
  final pulumi.Input<CriteriaBlockForJobResponse>? excludes;

  /// &lt;p&gt;The property- and tag-based conditions that determine which buckets to include in the job.&lt;/p&gt;
  final pulumi.Input<CriteriaBlockForJobResponse>? includes;

  /// Creates a new [S3BucketCriteriaForJobResponse].
  /// [excludes] &lt;p&gt;The property- and tag-based conditions that determine which buckets to exclude from the job.&lt;/p&gt;
  /// [includes] &lt;p&gt;The property- and tag-based conditions that determine which buckets to include in the job.&lt;/p&gt;
  S3BucketCriteriaForJobResponse({this.excludes, this.includes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludes':
          ?pulumi.Input.mapOptionalInputValue<
            CriteriaBlockForJobResponse,
            Map<String, dynamic>
          >(excludes, (value) => value.toMap()),
      'includes':
          ?pulumi.Input.mapOptionalInputValue<
            CriteriaBlockForJobResponse,
            Map<String, dynamic>
          >(includes, (value) => value.toMap()),
    };
  }

  factory S3BucketCriteriaForJobResponse.fromMap(Map<String, dynamic> map) {
    return S3BucketCriteriaForJobResponse(
      excludes: (() {
        final guardedValue = map['excludes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CriteriaBlockForJobResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      includes: (() {
        final guardedValue = map['includes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CriteriaBlockForJobResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
