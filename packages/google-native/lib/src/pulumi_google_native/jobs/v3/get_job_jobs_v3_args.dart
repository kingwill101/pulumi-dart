// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobJobsV3Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;

  GetJobJobsV3Args({
    required this.jobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetJobJobsV3Args.fromMap(Map<String, dynamic> map) {
    return GetJobJobsV3Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
