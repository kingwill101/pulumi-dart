// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJobIamPolicy.
class GetJobIamPolicyDataprocArgs {
  /// The name or relative resource id of the job to manage IAM policies for.
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? region;

  GetJobIamPolicyDataprocArgs({
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

  factory GetJobIamPolicyDataprocArgs.fromMap(Map<String, dynamic> map) {
    return GetJobIamPolicyDataprocArgs(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
