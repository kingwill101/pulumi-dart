// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getProcess.
class GetProcessArgs {
  final Input<String> location;
  final Input<String> processId;
  final Input<String>? project;

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
      location: Input.asInput<String>(map['location']),
      processId: Input.asInput<String>(map['processId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
