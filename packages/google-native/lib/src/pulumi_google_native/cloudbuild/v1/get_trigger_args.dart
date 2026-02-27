// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTrigger.
class GetTriggerArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> projectId;
  final Input<String> triggerId;

  GetTriggerArgs({
    required this.location,
    this.project,
    required this.projectId,
    required this.triggerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['projectId'] = projectId;
    map['triggerId'] = triggerId;
    return map;
  }

  factory GetTriggerArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggerArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      projectId: Input.asInput<String>(map['projectId']),
      triggerId: Input.asInput<String>(map['triggerId']),
    );
  }
}
