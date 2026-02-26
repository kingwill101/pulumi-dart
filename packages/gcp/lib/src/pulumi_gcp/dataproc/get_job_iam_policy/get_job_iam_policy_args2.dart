// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getJobIamPolicy.
class GetJobIamPolicyArgs2 {
  /// The name or relative resource id of the job to manage IAM policies for.
  final Input<String> jobId;
  final Input<String>? project;
  final Input<String>? region;

  GetJobIamPolicyArgs2({
    required this.jobId,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetJobIamPolicyArgs2.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyArgs2(
      jobId: Input.asInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
