// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_for_job_response.dart';

/// Definition of CriteriaBlockForJob
class CriteriaBlockForJobResponse {
  /// &lt;p&gt;An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.&lt;/p&gt;
  final pulumi.Input<List<CriteriaForJobResponse>>? and;

  /// Creates a new [CriteriaBlockForJobResponse].
  /// [and] &lt;p&gt;An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.&lt;/p&gt;
  const CriteriaBlockForJobResponse({
    this.and,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?pulumi.Input.mapOptionalInputValue<List<CriteriaForJobResponse>, List<Map<String, dynamic>>>(and, (value) => pulumi.Input.encodeList<CriteriaForJobResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CriteriaBlockForJobResponse.fromMap(Map<String, dynamic> map) {
    return CriteriaBlockForJobResponse(
      and: (() { final guardedValue = map['and']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CriteriaForJobResponse>(guardedValue, (value) => CriteriaForJobResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

