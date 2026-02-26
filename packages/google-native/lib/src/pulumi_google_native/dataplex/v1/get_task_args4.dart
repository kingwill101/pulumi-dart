// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTask.
class GetTaskArgs4 {
  final Input<String> lakeId;
  final Input<String> location;
  final Input<String>? project;
  final Input<String> taskId;

  GetTaskArgs4({
    required this.lakeId,
    required this.location,
    this.project,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['lakeId'] = lakeId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['taskId'] = taskId;
    return map;
  }

  factory GetTaskArgs4.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs4(
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      taskId: Input.asInput<String>(map['taskId']),
    );
  }
}
