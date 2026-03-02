// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_definition_build_task_response.dart';

/// A task group executed during the image definition build.
class ImageDefinitionBuildTaskGroupResponse {
  /// End time of the task group.
  final pulumi.Input<String> endTime;
  /// The name of the task group.
  final pulumi.Input<String> name;
  /// Start time of the task group.
  final pulumi.Input<String> startTime;
  /// The status of the task group.
  final pulumi.Input<String> status;
  /// The list of tasks executed during the task group.
  final pulumi.Input<List<ImageDefinitionBuildTaskResponse>> tasks;

  /// Creates a new [ImageDefinitionBuildTaskGroupResponse].
  /// [endTime] End time of the task group.
  /// [name] The name of the task group.
  /// [startTime] Start time of the task group.
  /// [status] The status of the task group.
  /// [tasks] The list of tasks executed during the task group.
  ImageDefinitionBuildTaskGroupResponse({
    required this.endTime,
    required this.name,
    required this.startTime,
    required this.status,
    required this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': endTime,
      'name': name,
      'startTime': startTime,
      'status': status,
      'tasks': pulumi.Input.mapInputValue<List<ImageDefinitionBuildTaskResponse>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<ImageDefinitionBuildTaskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageDefinitionBuildTaskGroupResponse.fromMap(Map<String, dynamic> map) {
    return ImageDefinitionBuildTaskGroupResponse(
      endTime: (map['endTime'] as String).input(),
      name: (map['name'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      tasks: (pulumi.Input.decodeList<ImageDefinitionBuildTaskResponse>(map['tasks'], (value) => ImageDefinitionBuildTaskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

