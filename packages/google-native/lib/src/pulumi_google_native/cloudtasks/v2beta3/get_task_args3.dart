// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTask.
class GetTaskArgs3 {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> queueId;
  final Input<String>? responseView;
  final Input<String> taskId;

  GetTaskArgs3({
    required this.location,
    this.project,
    required this.queueId,
    this.responseView,
    required this.taskId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['queueId'] = queueId;
    final responseViewValue = responseView;
    if (responseViewValue != null) {
      map['responseView'] = responseViewValue;
    }
    map['taskId'] = taskId;
    return map;
  }

  factory GetTaskArgs3.fromMap(Map<String, dynamic> map) {
    return GetTaskArgs3(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      queueId: Input.asInput<String>(map['queueId']),
      responseView: Input.asOptionalInput<String>(map['responseView']),
      taskId: Input.asInput<String>(map['taskId']),
    );
  }
}
