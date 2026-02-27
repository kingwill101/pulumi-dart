// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTargetProject.
class GetTargetProjectArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> targetProjectId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      targetProjectId: pulumi.Input.asInput<String>(map['targetProjectId']),
    );
  }
}
