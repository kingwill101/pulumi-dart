// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getJobTemplate.
class GetJobTemplateArgs {
  final pulumi.Input<String> jobTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      jobTemplateId: pulumi.Input.asInput<String>(map['jobTemplateId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
