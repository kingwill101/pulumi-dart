// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'criteria_for_job_response.dart';

/// Definition of CriteriaBlockForJob
class CriteriaBlockForJobResponse {
  /// <p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
  final List<CriteriaForJobResponse>? and;

  /// Creates a new [CriteriaBlockForJobResponse].
  /// [and] <p>An array of conditions, one for each condition that determines which buckets to include or exclude from the job. If you specify more than one condition, Amazon Macie uses AND logic to join the conditions.</p>
  CriteriaBlockForJobResponse({
    this.and,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'and': ?and == null ? null : pulumi.Input.encodeList<CriteriaForJobResponse, Map<String, dynamic>>(and!, (value) => value.toMap()),
    };
  }

  factory CriteriaBlockForJobResponse.fromMap(Map<String, dynamic> map) {
    return CriteriaBlockForJobResponse(
      and: map['and'] == null ? null : pulumi.Input.decodeList<CriteriaForJobResponse>(map['and'], (value) => CriteriaForJobResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

