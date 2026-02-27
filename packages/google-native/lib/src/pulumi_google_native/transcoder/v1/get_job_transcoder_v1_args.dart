// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobTranscoderV1Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetJobTranscoderV1Args({
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

  factory GetJobTranscoderV1Args.fromMap(Map<String, dynamic> map) {
    return GetJobTranscoderV1Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
