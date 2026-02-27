// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTask.
class GetTaskCloudtasksV2beta3Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> queueId;
  final pulumi.Input<String>? responseView;
  final pulumi.Input<String> taskId;

  GetTaskCloudtasksV2beta3Args({
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

  factory GetTaskCloudtasksV2beta3Args.fromMap(Map<String, dynamic> map) {
    return GetTaskCloudtasksV2beta3Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      queueId: pulumi.Input.asInput<String>(map['queueId']),
      responseView: pulumi.Input.asOptionalInput<String>(map['responseView']),
      taskId: pulumi.Input.asInput<String>(map['taskId']),
    );
  }
}
