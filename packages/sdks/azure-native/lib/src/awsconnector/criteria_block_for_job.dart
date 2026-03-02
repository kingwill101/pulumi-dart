// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_for_job.dart';

/// Definition of CriteriaBlockForJob
class CriteriaBlockForJob {
  /// <p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
  final pulumi.Input<List<CriteriaForJob>>? and;

  /// Creates a new [CriteriaBlockForJob].
  /// [and] <p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
  CriteriaBlockForJob({
    this.and,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<CriteriaForJob>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<CriteriaForJob, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CriteriaBlockForJob.fromMap(Map<String, dynamic> map) {
    return CriteriaBlockForJob(
      and: map['and'] == null ? null : (pulumi.Input.decodeList<CriteriaForJob>(map['and'], (value) => CriteriaForJob.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

