// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_for_job.dart';

/// Definition of CriteriaBlockForJob
class CriteriaBlockForJob {
  /// &lt;p&gt;An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.&lt;/p&gt;
  final pulumi.Input<List<CriteriaForJob>>? and;

  /// Creates a new [CriteriaBlockForJob].
  /// [and] &lt;p&gt;An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.&lt;/p&gt;
  const CriteriaBlockForJob({
    this.and,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<CriteriaForJob>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<CriteriaForJob, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CriteriaBlockForJob.fromMap(Map<String, dynamic> map) {
    return CriteriaBlockForJob(
      and: (() { final guardedValue = map['and']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CriteriaForJob>(guardedValue, (value) => CriteriaForJob.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

