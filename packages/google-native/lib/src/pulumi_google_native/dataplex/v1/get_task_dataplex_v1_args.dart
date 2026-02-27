// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTask.
class GetTaskDataplexV1Args {
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taskId;

  GetTaskDataplexV1Args({
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

  factory GetTaskDataplexV1Args.fromMap(Map<String, dynamic> map) {
    return GetTaskDataplexV1Args(
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      taskId: pulumi.Input.asInput<String>(map['taskId']),
    );
  }
}
