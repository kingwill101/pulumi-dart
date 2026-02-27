// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getJob.
class GetJobArgs3 {
  final Input<String> jobId;
  final Input<String> location;
  final Input<String>? project;

  GetJobArgs3({
    required this.jobId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetJobArgs3.fromMap(Map<String, dynamic> map) {
    return GetJobArgs3(
      jobId: Input.asInput<String>(map['jobId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
