// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobJobsV4Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  GetJobJobsV4Args({
    required this.jobId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tenantId'] = tenantId;
    return map;
  }

  factory GetJobJobsV4Args.fromMap(Map<String, dynamic> map) {
    return GetJobJobsV4Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      tenantId: pulumi.Input.asInput<String>(map['tenantId']),
    );
  }
}
