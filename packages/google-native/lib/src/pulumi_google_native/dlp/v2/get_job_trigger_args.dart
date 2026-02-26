// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getJobTrigger.
class GetJobTriggerArgs {
  final Input<String> jobTriggerId;
  final Input<String> location;
  final Input<String>? project;

  GetJobTriggerArgs({
    required this.jobTriggerId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobTriggerId'] = jobTriggerId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetJobTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTriggerArgs(
      jobTriggerId: Input.asInput<String>(map['jobTriggerId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
