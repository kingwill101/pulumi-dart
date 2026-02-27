// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTargetProject.
class GetTargetProjectArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> targetProjectId;

  GetTargetProjectArgs({
    required this.location,
    this.project,
    required this.targetProjectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['targetProjectId'] = targetProjectId;
    return map;
  }

  factory GetTargetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetTargetProjectArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      targetProjectId: Input.asInput<String>(map['targetProjectId']),
    );
  }
}
