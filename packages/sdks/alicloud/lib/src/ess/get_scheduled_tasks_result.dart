// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_scheduled_tasks_task.dart';

/// Result data returned by getScheduledTasks.
class GetScheduledTasksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of scheduled task ids.
  final List<String> ids;
  final String? nameRegex;

  /// A list of scheduled task names.
  final List<String> names;
  final String? outputFile;

  /// The operation to be performed when a scheduled task is triggered.
  final String? scheduledAction;
  final String? scheduledTaskId;

  /// A list of scheduled tasks. Each element contains the following attributes:
  final List<GetScheduledTasksTask> tasks;

  /// Creates a new [GetScheduledTasksResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of scheduled task ids.
  /// [nameRegex] Optional.
  /// [names] A list of scheduled task names.
  /// [outputFile] Optional.
  /// [scheduledAction] The operation to be performed when a scheduled task is triggered.
  /// [scheduledTaskId] Optional.
  /// [tasks] A list of scheduled tasks. Each element contains the following attributes:
  GetScheduledTasksResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.scheduledAction,
    this.scheduledTaskId,
    required this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'scheduledAction': ?scheduledAction,
      'scheduledTaskId': ?scheduledTaskId,
      'tasks':
          pulumi.Input.encodeList<GetScheduledTasksTask, Map<String, dynamic>>(
            tasks,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetScheduledTasksResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledTasksResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      scheduledAction: (() {
        final guardedValue = map['scheduledAction'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      scheduledTaskId: (() {
        final guardedValue = map['scheduledTaskId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tasks: pulumi.Input.decodeList<GetScheduledTasksTask>(
        map['tasks']!,
        (value) => GetScheduledTasksTask.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
