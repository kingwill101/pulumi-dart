// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getJob.
class GetJobArgs8 {
  final Input<String> jobId;
  final Input<String>? project;

  GetJobArgs8({
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

  factory GetJobArgs8.fromMap(Map<String, dynamic> map) {
    return GetJobArgs8(
      jobId: Input.asInput<String>(map['jobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
