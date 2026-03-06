// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ess_get_scheduled_tasks_get_scheduled_tasks_args_doc}
/// Arguments for getScheduledTasks.
/// {@endtemplate}
/// {@macro pulumi_ess_get_scheduled_tasks_get_scheduled_tasks_args_doc}
class GetScheduledTasksArgs {
  /// A list of scheduled task IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter resulting scheduled tasks by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The operation to be performed when a scheduled task is triggered.
  final pulumi.Input<String>? scheduledAction;
  /// The id of the scheduled task.
  final pulumi.Input<String>? scheduledTaskId;

  /// Creates a new [GetScheduledTasksArgs].
  /// [ids] A list of scheduled task IDs.
  /// [nameRegex] A regex string to filter resulting scheduled tasks by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [scheduledAction] The operation to be performed when a scheduled task is triggered.
  /// [scheduledTaskId] The id of the scheduled task.
  const GetScheduledTasksArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.scheduledAction,
    this.scheduledTaskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'scheduledAction': ?scheduledAction,
      'scheduledTaskId': ?scheduledTaskId,
    };
  }

  factory GetScheduledTasksArgs.fromMap(Map<String, dynamic> map) {
    return GetScheduledTasksArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledAction: (() { final guardedValue = map['scheduledAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduledTaskId: (() { final guardedValue = map['scheduledTaskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

