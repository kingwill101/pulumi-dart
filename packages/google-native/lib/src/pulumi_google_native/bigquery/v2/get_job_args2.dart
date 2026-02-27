// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getJob.
class GetJobArgs2 {
  final Input<String> jobId;
  final Input<String>? location;
  final Input<String>? project;

  GetJobArgs2({
    required this.jobId,
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobId'] = jobId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetJobArgs2.fromMap(Map<String, dynamic> map) {
    return GetJobArgs2(
      jobId: Input.asInput<String>(map['jobId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
