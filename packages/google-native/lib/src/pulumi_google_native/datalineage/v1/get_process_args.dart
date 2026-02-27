// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getProcess.
class GetProcessArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> processId;
  final pulumi.Input<String>? project;

  GetProcessArgs({
    required this.location,
    required this.processId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['processId'] = processId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetProcessArgs.fromMap(Map<String, dynamic> map) {
    return GetProcessArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      processId: pulumi.Input.asInput<String>(map['processId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
