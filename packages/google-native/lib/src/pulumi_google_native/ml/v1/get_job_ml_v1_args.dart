// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobMlV1Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;

  GetJobMlV1Args({
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

  factory GetJobMlV1Args.fromMap(Map<String, dynamic> map) {
    return GetJobMlV1Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
