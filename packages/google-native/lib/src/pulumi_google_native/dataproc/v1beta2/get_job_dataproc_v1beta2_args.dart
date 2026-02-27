// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobDataprocV1beta2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetJobDataprocV1beta2Args({
    required this.jobId,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetJobDataprocV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetJobDataprocV1beta2Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
