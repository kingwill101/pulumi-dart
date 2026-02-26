// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getJobTemplate.
class GetJobTemplateArgs {
  final Input<String> jobTemplateId;
  final Input<String> location;
  final Input<String>? project;

  GetJobTemplateArgs({
    required this.jobTemplateId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobTemplateId'] = jobTemplateId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetJobTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateArgs(
      jobTemplateId: Input.asInput<String>(map['jobTemplateId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
