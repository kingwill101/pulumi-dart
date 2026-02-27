// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJob.
class GetJobBigqueryV2Args {
  final pulumi.Input<String> jobId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  GetJobBigqueryV2Args({
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

  factory GetJobBigqueryV2Args.fromMap(Map<String, dynamic> map) {
    return GetJobBigqueryV2Args(
      jobId: pulumi.Input.asInput<String>(map['jobId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
