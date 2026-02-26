// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getJob.
class GetJobArgs6 {
  final Input<String> jobId;
  final Input<String>? project;
  final Input<String> region;

  GetJobArgs6({
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

  factory GetJobArgs6.fromMap(Map<String, dynamic> map) {
    return GetJobArgs6(
      jobId: Input.asInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
