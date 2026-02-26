// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getJob.
class GetJobArgs10 {
  final Input<String> jobId;
  final Input<String>? project;

  GetJobArgs10({
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

  factory GetJobArgs10.fromMap(Map<String, dynamic> map) {
    return GetJobArgs10(
      jobId: Input.asInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
